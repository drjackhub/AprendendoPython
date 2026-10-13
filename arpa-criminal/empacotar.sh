#!/usr/bin/env bash
# Gera um .zip por skill (para enviar ao claude.ai em Skills) e um pacote completo.
# Saída: ./dist/
set -euo pipefail

ORIGEM="$(cd "$(dirname "$0")" && pwd)"
SAIDA="$ORIGEM/dist"
rm -rf "$SAIDA" && mkdir -p "$SAIDA/skills"

cd "$ORIGEM/skills"
for pasta in */; do
  nome="${pasta%/}"
  zip -qr "$SAIDA/skills/$nome.zip" "$nome"
  echo "gerado: dist/skills/$nome.zip"
done

cd "$ORIGEM/.."
zip -qr "$SAIDA/arpa-criminal-completo.zip" "$(basename "$ORIGEM")" -x "*/dist/*"
echo "gerado: dist/arpa-criminal-completo.zip"
