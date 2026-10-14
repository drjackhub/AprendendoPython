---
caso: ""
documento: prazos
modulo: M1
agente: arpac-prazos-prescricao
versao: 0
status: vazio               # vazio | rascunho | concluido | aprovado | superado
atualizado_em: ""
confianca_geral: ""
pendencias: 0
alertas: []                 # PRAZO FATAL | PRAZO CURTO | PRAZO VENCIDO | PRESCRIÇÃO IMINENTE | PRESCRIÇÃO CONSUMADA | REVISÃO 90 DIAS | EXCESSO DE PRAZO
tags: []
prazo_mais_proximo: ""      # AAAA-MM-DD (termo final do prazo em curso mais próximo)
prescricao_data_limite: ""  # AAAA-MM-DD (data mais próxima de consumação calculada)
proxima_revisao_316: ""     # AAAA-MM-DD (limite da revisão nonagesimal, se preso preventivamente)
---

# Painel de Prazos — <CASO>

<!-- Escrita exclusiva do arpac-prazos-prescricao. Memória de cálculo completa em analise/03-prazos-prescricao.md. Contagem penal: art. 798 CPP (dias corridos); o art. 219 do CPC NÃO se aplica. Semáforo da /prazos-penais: 🟢 mais de 5 dias; 🟡 3 a 5; 🔴 até 2, vencido ou réu preso com até 3. Data interna = termo final menos 1 dia útil (réu preso: menos 2). -->

## 1 Prazos em Curso

| # | Ato / peça | Fundamento | Termo inicial (intimação) | Prazo (dias) | Termo final | Data interna (segurança) | Dias restantes | Status (🟢 / 🟡 CURTO / 🔴 FATAL / VENCIDO / CUMPRIDO) | Fonte (id/fl.) | Confiança |
|---|---|---|---|---|---|---|---|---|---|---|

## 2 Controles Recorrentes

| Controle | Último ato (data) | Próximo limite | Fundamento | Status |
|---|---|---|---|---|
| Revisão nonagesimal da preventiva | | | art. 316, p.ú., CPP | |
| Prazo do inquérito com investigado preso | | | art. 10 CPP / lei especial | |
| Duração da instrução (excesso de prazo) | | | razoabilidade / art. 5º, LXXVIII, CF | |
| Vigência de medidas protetivas ou cautelares | | | | |

## 3 Prescrição — Resumo

| Modalidade | Pena de referência | Prazo (art. 109 CP) | Marco inicial | Data-limite | Status |
|---|---|---|---|---|---|

## 4 Alertas Ativos

| Alerta | Descrição | Data-limite | Ação requerida |
|---|---|---|---|
