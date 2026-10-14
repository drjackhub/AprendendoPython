#!/usr/bin/env bash
# Instala o ARPA-Criminal no Claude Code do computador local.
#
# Uso:
#   ./instalar.sh                      # instala skills e agentes no usuário (~/.claude)
#   ./instalar.sh /caminho/do/vault    # idem + copia os templates para o vault do escritório
#
# Não sobrescreve arquivos já existentes no vault (CLAUDE.md, painel, equipe etc.).
set -euo pipefail

ORIGEM="$(cd "$(dirname "$0")" && pwd)"
DESTINO_CLAUDE="${CLAUDE_HOME:-$HOME/.claude}"
VAULT="${1:-}"

mkdir -p "$DESTINO_CLAUDE/skills" "$DESTINO_CLAUDE/agents"

for pasta in "$ORIGEM"/skills/*/; do
  nome="$(basename "$pasta")"
  rm -rf "$DESTINO_CLAUDE/skills/$nome"
  cp -R "$pasta" "$DESTINO_CLAUDE/skills/$nome"
  echo "skill instalada: $nome"
done

for agente in "$ORIGEM"/agents/*.md; do
  cp "$agente" "$DESTINO_CLAUDE/agents/"
  echo "agente instalado: $(basename "$agente" .md)"
done

if [ -n "$VAULT" ]; then
  mkdir -p "$VAULT/casos"
  # -n: não sobrescreve o que o escritório já preencheu
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --ignore-existing "$ORIGEM"/templates/ "$VAULT"/
  else
    cp -Rn "$ORIGEM"/templates/. "$VAULT"/
  fi
  echo "templates copiados para: $VAULT (arquivos existentes preservados)"
  echo "para abrir um caso: cp -R \"$VAULT/caso-modelo\" \"$VAULT/casos/<CNJ-ou-apelido>\""
fi

echo "pronto. Abra o Claude Code no vault e digite: /arpa-criminal"
