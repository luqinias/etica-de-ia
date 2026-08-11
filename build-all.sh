#!/usr/bin/env bash
# ==========================================================================
#  IA na Sociedade — compila todos os capítulos de uma vez
#  Uso: ./build-all.sh
# ==========================================================================
set -uo pipefail

RAIZ="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FALHAS=0

for dir in "$RAIZ"/Capitulo*; do
  [ -d "$dir" ] || continue
  N="${dir##*Capitulo}"
  if [ ! -f "$dir/capitulo$N.md" ]; then
    echo "── Capítulo $N ── sem markdown, pulando."
    continue
  fi
  if ! "$RAIZ/assets/build.sh" "$N"; then
    FALHAS=$((FALHAS + 1))
  fi
done

echo
if [ "$FALHAS" -eq 0 ]; then
  echo "Tudo compilado sem erros."
else
  echo "$FALHAS capítulo(s) falharam."
  exit 1
fi
