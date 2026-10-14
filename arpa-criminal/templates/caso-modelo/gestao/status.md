---
caso: ""
documento: status
modulo: GESTAO
agente: arpac-controller
versao: 0
status: vazio               # vazio | rascunho | concluido | aprovado | superado
atualizado_em: ""
confianca_geral: ""
pendencias: 0
alertas: []
tags: []
coluna_kanban: ""           # ENTRADA | TRIAGEM | DIAGNÓSTICO (aguarda Douglas) | ESTRATÉGIA | REDAÇÃO | REVISÃO | PRONTO P/ PROTOCOLO | PROTOCOLADO / ACOMPANHAMENTO | ARQUIVADO
etapa: ""                   # M0 | M1 | PORTÃO 1 | M2 | M3 | M4 | PORTÃO 2 | M5 | PORTÃO 3 | ACOMPANHAMENTO
prioridade: ""              # P1 (réu preso / prazo fatal) | P2 | P3
responsavel_humano: ""      # iniciais (Shared/equipe.md)
---

# Status do Caso — <CASO>

## 1 Situação Atual

| Campo | Valor |
|---|---|
| Coluna do Kanban | |
| Etiquetas | |
| Etapa da esteira | |
| Último portão aprovado | |
| Modo de execução | |
| Responsável humano (R) | |
| Aprovador (A) | |
| Prioridade | |
| Atualizado em | |

## 2 Prazos e Datas Críticas (espelho de wiki/prazos.md)

| Data-limite | Evento | Alerta | Responsável |
|---|---|---|---|

## 3 Próximos Passos

| # | Ação | Responsável (R) | Aprovador (A) | Prazo interno (SLA) | Status |
|---|---|---|---|---|---|

## 4 Pendências Abertas

| # | Pendência ([PENDENTE]) | Origem (arquivo) | Quem resolve | Desde |
|---|---|---|---|---|

## 5 Esteira do Caso

| Etapa | Agente / responsável | Arquivo | Situação | Data |
|---|---|---|---|---|
| M0 Triagem | arpac-triagem | analise/01-triagem.md | | |
| M1 Decomposição | arpac-auditor-autos | analise/02-decomposicao.md | | |
| M1 Prazos e prescrição | arpac-prazos-prescricao | analise/03-prazos-prescricao.md | | |
| PORTÃO 1 | Douglas | gestao/status.md §6 | | |
| M2 Teses | arpac-estrategista | analise/04-teses.md | | |
| M2 Jurisprudência | arpac-pesquisador | analise/05-jurisprudencia.md | | |
| M3 Blueprint | arpac-estrategista | analise/06-blueprint.md | | |
| M4 Revisão do blueprint | arpac-revisor | analise/07-revisao.md §1 | | |
| PORTÃO 2 | Douglas | gestao/status.md §6 | | |
| M5 Minuta | arpac-redator | minutas/ | | |
| M4 Revisão da minuta | arpac-revisor | analise/07-revisao.md §2 | | |
| PORTÃO 3 | Douglas (revisa, assina e protocola) | gestao/status.md §6 | | |

## 6 Decisões e Respostas do Douglas nos Portões

| Data | Portão | Decisão ou resposta (Q# respondidas) | Efeito na esteira |
|---|---|---|---|

## 7 Indicadores do Caso

| Indicador | Valor | Observação |
|---|---|---|
| Dias desde a entrada | | |
| Dias na coluna atual | | |
| Versões de minuta | | |
| Vereditos REPROVADO | | |
| [PENDENTE] abertos | | |
