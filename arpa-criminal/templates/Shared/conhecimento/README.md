---
documento: conhecimento-readme
atualizado_em: ""
---

# Base de Conhecimento — Exports dos Cadernos NotebookLM

Esta pasta guarda, em Markdown, as respostas exportadas dos cadernos do NotebookLM do escritório. Ela é o segundo nível do mecanismo de consulta do ARPA-C (SPEC §6): primeiro a IA tenta o MCP do NotebookLM, se houver; na falta dele, lê os arquivos desta pasta; não havendo arquivo, aplica a diretriz-base da skill e registra `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`.

## 1 Arquivos Esperados

| Arquivo | Caderno NotebookLM | Quem consome |
|---|---|---|
| `automacao.md` | AUTOMAÇÃO COM IA | `/automacao`, orquestrador `/arpa-criminal`, `arpac-auditor-autos`, `arpac-controller` |
| `pessoas.md` | GESTÃO DE PESSOAS | `/gestao-pessoas`, `arpac-controller` |
| `processos.md` | GESTÃO DE PROCESSOS | `/gestao-processos`, `arpac-triagem`, `arpac-controller` |
| `escritorio.md` | GESTÃO DE ESCRITÓRIOS | `/gestao-escritorio`, `arpac-triagem`, `arpac-controller` |

Os nomes definitivos dos cadernos e as perguntas-padrão de cada um estão em `notebooklm/cadernos.md`, no repositório do ARPA-C. Se o Douglas renomear um caderno, mantenha o nome do arquivo aqui e anote o novo nome no frontmatter do export.

## 2 Como Gerar um Export

Abra o caderno no NotebookLM, faça as perguntas-padrão listadas em `notebooklm/cadernos.md` e cole cada resposta, com as citações das fontes, como uma seção do arquivo correspondente. Use o esqueleto abaixo.

```markdown
---
caderno: "GESTÃO DE PROCESSOS"
nome_no_notebooklm: ""
exportado_em: AAAA-MM-DD
exportado_por: ""            # iniciais
fontes_do_caderno: 0
---

# Export — GESTÃO DE PROCESSOS

## P1 <pergunta-padrão, copiada literalmente>

<resposta do NotebookLM, com as citações [n] preservadas>

Fontes citadas: [n] <título da fonte>; [n] <título da fonte>
```

## 3 Regras de Uso pela IA

A IA cita trechos desta pasta como `[NotebookLM: <caderno> — export de AAAA-MM-DD, P<n>]`. Export com mais de 180 dias deve ser sinalizado como possivelmente desatualizado no retorno do agente. Esta pasta contém conhecimento de gestão, não dados de clientes: nunca grave aqui informação de caso concreto. Conteúdo jurídico vindo do NotebookLM não dispensa a verificação de precedentes pelo `arpac-pesquisador`.
