---
caso: ""
documento: 03-prazos-prescricao
modulo: M1
agente: arpac-prazos-prescricao
versao: 0
status: vazio               # vazio | rascunho | concluido | aprovado | superado
atualizado_em: ""
confianca_geral: ""
pendencias: 0
alertas: []
tags: []
data_de_referencia: ""      # AAAA-MM-DD (dia em que os cálculos foram feitos)
---

# 03 — Auditoria de Prazos e Prescrição (M1) — <CASO>

## 1 Premissas de Contagem

| Premissa | Aplicação no caso | Fonte |
|---|---|---|
| Prazos contínuos e peremptórios; exclui-se o dia do começo e inclui-se o do vencimento (art. 798, caput e § 1º, CPP) | | |
| Termo final em domingo ou feriado prorroga para o dia útil imediato (art. 798, § 3º, CPP) | | |
| Contagem a partir da intimação, não da juntada do mandado (STF, Súmula 710) | | |
| Intimação na sexta-feira: início na segunda-feira ou no primeiro dia útil seguinte (STF, Súmula 310) | | |
| Suspensão de 20 de dezembro a 20 de janeiro e suas exceções (art. 798-A CPP) [VERIFICAR REDAÇÃO VIGENTE] | | |
| Feriados e suspensões locais (Shared/calendario.md) | | |
| Regra especial do rito ou da lei extravagante (/prazos-penais) | | |

## 2 Tabela de Cálculo de Prazos

| # | Ato | Fundamento legal | Data da intimação | Primeiro dia da contagem | Prazo (dias) | Vencimento bruto | Ajuste (fim de semana / feriado / suspensão) | Vencimento final | Fonte (id/fl.) | Confiança |
|---|---|---|---|---|---|---|---|---|---|---|

## 3 Memória de Cálculo

<!-- Uma subseção "### Prazo n — <ato>" por linha da tabela 2, em prosa curta: intimação, regra aplicada, dias pulados e por quê. -->

## 4 Status Prisional e Controles Temporais

| Controle | Data-base | Limite | Situação | Fundamento |
|---|---|---|---|---|

## 5 Prescrição

### 5.1 Dados de base

| Dado | Valor | Fonte (id/fl.) | Confiança |
|---|---|---|---|
| Data do fato / termo inicial (art. 111 CP) | | | |
| Data de nascimento do réu | | | |
| Menor de 21 na data do fato ou maior de 70 na data da sentença (art. 115 CP) | | | |
| Reincidência reconhecida (art. 110, caput, CP — só na executória; STJ, Súmula 220) | | | |
| Pena máxima em abstrato (com majorantes no máximo e minorantes no mínimo) | | | |
| Pena em concreto (se houver sentença) e trânsito para a acusação | | | |
| Concurso de crimes (art. 119 CP) / crime continuado (STF, Súmula 497) | | | |

### 5.2 Pretensão punitiva em abstrato (art. 109 CP)

| Crime | Pena máxima | Prazo (art. 109) | Redução (art. 115) | Prazo aplicável | Intervalo entre marcos | Início | Fim | Situação |
|---|---|---|---|---|---|---|---|---|

### 5.3 Pretensão punitiva retroativa e intercorrente (art. 110, § 1º, CP)

| Crime | Pena em concreto | Prazo aplicável | Intervalo | Início | Fim | Situação |
|---|---|---|---|---|---|---|

### 5.4 Pretensão executória (art. 110, caput, CP)

| Crime | Pena aplicada | Prazo (com +1/3 se reincidente) | Termo inicial | Data-limite | Situação |
|---|---|---|---|---|---|

### 5.5 Conclusão e data-limite crítica

<!-- Prosa curta: há prescrição consumada? Qual a data mais próxima de consumação? Lembrar a STJ, Súmula 438 (vedação da prescrição em perspectiva). -->

## 6 Alertas

| Alerta | Gatilho | Data-limite | Ação requerida |
|---|---|---|---|

## 7 Perguntas Socráticas (M1 — prazos)

| Q# | Pergunta | Finalidade | Bloqueia (módulo) |
|---|---|---|---|
