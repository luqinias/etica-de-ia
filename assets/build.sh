#!/usr/bin/env bash
# ==========================================================================
#  IA na Sociedade — gera HTML, LaTeX e PDF a partir do markdown do capítulo
# --------------------------------------------------------------------------
#  Uso:  ./assets/build.sh 01
#        ./assets/build.sh 05
#
#  A partir de CapituloNN/capituloNN.md produz, na mesma pasta:
#      capituloNN.html   — autocontido, com o ia-style.css embutido
#      capituloNN.tex    — fonte LaTeX
#      capituloNN.pdf    — compilado com pdflatex (duas passadas)
#
#  Imagens: coloque os arquivos em CapituloNN/img/.
#  Use .svg para a web e um .pdf de mesmo nome para o LaTeX; o script troca
#  a extensão automaticamente na hora de gerar o .tex.
# ==========================================================================
set -euo pipefail

# --- localiza a raiz do projeto a partir da posição deste script ----------
ASSETS="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RAIZ="$(dirname "$ASSETS")"

if [ $# -lt 1 ]; then
  echo "Uso: $0 <numero-do-capitulo>   (ex.: $0 01)" >&2
  exit 1
fi

N="$1"
DIR="$RAIZ/Capitulo$N"
MD="capitulo$N.md"

[ -d "$DIR" ]      || { echo "ERRO: pasta $DIR não existe." >&2; exit 1; }
[ -f "$DIR/$MD" ]  || { echo "ERRO: $DIR/$MD não encontrado." >&2; exit 1; }

command -v pandoc   >/dev/null || { echo "ERRO: pandoc não está instalado." >&2; exit 1; }
command -v pdflatex >/dev/null || { echo "ERRO: pdflatex não está instalado." >&2; exit 1; }

cd "$DIR"
mkdir -p img
LOG="$(mktemp -d)"
trap 'rm -rf "$LOG"' EXIT

echo "── Capítulo $N ──────────────────────────────────"

# --------------------------------------------------------------------------
# 1. HTML
# --------------------------------------------------------------------------
# --embed-resources substituiu --self-contained no pandoc 3.x;
# a linha abaixo detecta a versão e usa a flag correta.
if pandoc --version | head -1 | grep -qE 'pandoc 3'; then
  EMBED="--embed-resources --standalone"
else
  EMBED="--self-contained"
fi

# shellcheck disable=SC2086
pandoc "$MD" -o "capitulo$N.html" \
  $EMBED \
  --css "$ASSETS/ia-style.css" \
  --resource-path=".:$ASSETS:img" \
  --lua-filter="$ASSETS/blocos.lua" \
  --toc --toc-depth=3 \
  --highlight-style=tango \
  --metadata lang=pt-BR \
  2>"$LOG/html.log" && echo "  HTML  ok" \
  || { echo "  HTML  FALHOU"; cat "$LOG/html.log"; exit 1; }

# --------------------------------------------------------------------------
# 2. LaTeX
# --------------------------------------------------------------------------
# troca img/*.svg por img/*.pdf e remove o campo lang (evita exigir babel-brasil)
sed -e 's#\(img/[A-Za-z0-9_-]*\)\.svg#\1.pdf#g' \
    -e '/^lang: pt-BR$/d' "$MD" > "$LOG/capitulo_tex.md"

pandoc "$LOG/capitulo_tex.md" -s -o "capitulo$N.tex" \
  --pdf-engine=pdflatex \
  -H "$ASSETS/ia-header.tex" \
  --resource-path=".:$ASSETS:img" \
  --lua-filter="$ASSETS/blocos.lua" \
  -V documentclass=article \
  -V fontfamily=charter \
  -V fontsize=11pt \
  -V geometry:margin=2.5cm \
  -V colorlinks=true \
  -V linkcolor=iaAmeixa \
  -V urlcolor=iaRiscos \
  -V toccolor=iaConceitos \
  --highlight-style=tango \
  --toc --toc-depth=3 \
  2>"$LOG/tex.log" && echo "  TeX   ok" \
  || { echo "  TeX   FALHOU"; cat "$LOG/tex.log"; exit 1; }

# --------------------------------------------------------------------------
# 3. PDF (duas passadas para fechar o sumário e as referências cruzadas)
# --------------------------------------------------------------------------
pdflatex -interaction=nonstopmode "capitulo$N.tex" >"$LOG/pl1.log" 2>&1 || true
pdflatex -interaction=nonstopmode "capitulo$N.tex" >"$LOG/pl2.log" 2>&1 || true

if [ -f "capitulo$N.pdf" ]; then
  PAGS="?"
  command -v pdfinfo >/dev/null && \
    PAGS="$(pdfinfo "capitulo$N.pdf" | awk '/^Pages/{print $2}')"
  OVER="$(grep -c 'Overfull .hbox' "$LOG/pl2.log" || true)"
  echo "  PDF   ok — $PAGS páginas, $OVER overfull hbox"
  [ "$OVER" -gt 12 ] && echo "  aviso: muitos overfull; revise tabelas e URLs longas."
else
  echo "  PDF   FALHOU — primeiros erros:"
  grep -n -A4 '^! \|Unicode character\|Undefined control' "$LOG/pl1.log" | head -30
  exit 1
fi

# limpeza dos temporários do LaTeX (o .toc fica: é usado na 2ª passada)
rm -f "capitulo$N.aux" "capitulo$N.log" "capitulo$N.out"

echo "  → $DIR/capitulo$N.{html,tex,pdf}"
