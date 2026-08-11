#!/usr/bin/env bash
# ==========================================================================
#  Ética da IA — compila exercícios, gabaritos e o índice
#  Uso: ./build-extras.sh
# ==========================================================================
set -uo pipefail

RAIZ="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSETS="$RAIZ/assets"
FALHAS=0

if pandoc --version | head -1 | grep -qE 'pandoc 3'; then
  EMBED="--embed-resources --standalone"
else
  EMBED="--self-contained"
fi

compila() {
  local md="$1" base="${1%.md}" dir
  dir="$(dirname "$md")"
  local nome; nome="$(basename "$base")"

  # shellcheck disable=SC2086
  pandoc "$md" -o "$base.html" $EMBED \
    --css "$ASSETS/ia-style.css" \
    --resource-path=".:$dir:$ASSETS:$RAIZ" \
    --lua-filter="$ASSETS/blocos.lua" \
    --toc --toc-depth=2 --metadata lang=pt-BR 2>/dev/null || {
      echo "  $nome: HTML FALHOU"; return 1; }

  local tmp; tmp="$(mktemp -d)"
  sed -e 's#\(img/[A-Za-z0-9_-]*\)\.svg#\1.pdf#g' \
      -e 's#\(\.\./Capitulo[0-9]*/img/[A-Za-z0-9_-]*\)\.svg#\1.pdf#g' \
      -e '/^lang: pt-BR$/d' "$md" > "$tmp/x.md"

  pandoc "$tmp/x.md" -s -o "$base.tex" --pdf-engine=pdflatex \
    -H "$ASSETS/ia-header.tex" \
    --resource-path=".:$dir:$ASSETS:$RAIZ" \
    --lua-filter="$ASSETS/blocos.lua" \
    -V documentclass=article -V fontfamily=charter -V fontsize=11pt \
    -V geometry:margin=2.5cm -V colorlinks=true \
    -V linkcolor=iaAmeixa -V urlcolor=iaRiscos -V toccolor=iaConceitos \
    --toc --toc-depth=2 2>/dev/null || {
      echo "  $nome: TeX FALHOU"; rm -rf "$tmp"; return 1; }
  rm -rf "$tmp"

  ( cd "$dir" && \
    pdflatex -interaction=nonstopmode "$nome.tex" >/dev/null 2>&1
    pdflatex -interaction=nonstopmode "$nome.tex" >/dev/null 2>&1
    rm -f "$nome.aux" "$nome.log" "$nome.out" "$nome.toc" )

  if [ -f "$base.pdf" ]; then
    local p="?"
    command -v pdfinfo >/dev/null && p="$(pdfinfo "$base.pdf" | awk '/^Pages/{print $2}')"
    echo "  $nome — $p páginas"
  else
    echo "  $nome: PDF FALHOU"; return 1
  fi
}

echo "── Índice ───────────────────────────────────────"
compila "$RAIZ/indice.md" || FALHAS=$((FALHAS+1))

echo "── Exercícios ───────────────────────────────────"
for f in "$RAIZ"/exercicios/capitulo*-exercicios.md; do
  [ -f "$f" ] && { compila "$f" || FALHAS=$((FALHAS+1)); }
done

echo "── Gabaritos ────────────────────────────────────"
for f in "$RAIZ"/respostas/capitulo*-respostas.md; do
  [ -f "$f" ] && { compila "$f" || FALHAS=$((FALHAS+1)); }
done

echo
[ "$FALHAS" -eq 0 ] && echo "Tudo compilado sem erros." || { echo "$FALHAS falha(s)."; exit 1; }
