---
caso: ""                    # CNJ ou apelido (= nome da pasta em casos/)
documento: ficha
modulo: M0
agente: arpac-triagem
versao: 0
status: vazio               # vazio | rascunho | concluido | aprovado | superado
atualizado_em: ""           # AAAA-MM-DD
confianca_geral: ""         # ALTA | MÉDIA | BAIXA
pendencias: 0               # nº de [PENDENTE] abertos neste arquivo
alertas: []                 # vocabulário do SCHEMA.md §7 (ex.: RÉU PRESO)
tags: []                    # etiquetas sem "#": reu-preso, prazo-fatal, prescricao-risco, juri, maria-da-penha, execucao, superiores
cnj: ""                     # NNNNNNN-DD.AAAA.J.TR.OOOO (TJPE = 8.17) ou nº do IP/APF
polo: ""                    # defesa | assistencia-acusacao | vitima | querelante | querelado
fase: ""                    # investigacao | flagrante-custodia | acao-penal-1grau | juri-1fase | juri-plenario | recursal | superiores | execucao | revisao-criminal
rito: ""                    # ordinario | sumario | sumarissimo-jecrim | juri | drogas | funcionario-publico | maria-da-penha | eca | especial
competencia: ""             # estadual | federal | militar | eleitoral | foro-prerrogativa
comarca: ""
status_prisional: ""        # solto | flagrante | preventiva | temporaria | domiciliar | cautelares-319 | monitoramento | cumprindo-pena
data_prisao: ""             # AAAA-MM-DD
---

# Ficha do Caso — <CASO>

<!-- Escrita exclusiva do arpac-triagem. Demais agentes apenas leem; divergências vão para analise/02-decomposicao.md §7. Todo valor leva fonte (id/fl.) e confiança. -->

## 1 Identificação e Classificação

| Campo | Valor | Fonte (id/fl.) | Confiança |
|---|---|---|---|
| Nº CNJ / IP / APF | | | |
| Apelido do caso | | | |
| Cliente (assistido) | | | |
| Polo de atuação | | | |
| Corréus | | | |
| Vítima(s) | | | |
| Juízo / Vara / Comarca | | | |
| Autoridade policial / Órgão do MP | | | |
| Fase da persecução | | | |
| Rito | | | |
| Competência | | | |
| Ação penal (natureza) | | | |
| Imputação (tipificação) | | | |
| Penas em abstrato (mín./máx.) | | | |
| Hediondo ou equiparado | | | |
| Peça cabível provável | | | |

## 2 Status de Liberdade e Marcos Temporais

### 2.1 Situação prisional

| Campo | Valor | Fonte (id/fl.) | Confiança |
|---|---|---|---|
| Situação prisional | | | |
| Data da prisão | | | |
| Estabelecimento | | | |
| Decisão que decretou ou manteve | | | |
| Audiência de custódia | | | |
| Última revisão (art. 316, p.ú., CPP) | | | |
| Cautelares diversas / monitoramento | | | |
| Medidas protetivas vigentes | | | |

### 2.2 Marcos temporais essenciais

<!-- Datas mínimas para o arpac-prazos-prescricao rodar já no modo urgente; a cronologia completa é do arpac-auditor-autos. -->

| Marco | Data | Fonte (id/fl.) | Confiança |
|---|---|---|---|
| Data do fato | | | |
| Oferecimento da denúncia ou queixa | | | |
| Recebimento da denúncia ou queixa | | | |
| Citação | | | |
| Sentença, pronúncia ou acórdão | | | |
| Última intimação relevante (ato e data) | | | |

## 3 Etiquetas do Kanban

<!-- Marque as aplicáveis: #reu-preso #prazo-fatal #prescricao-risco #juri #maria-da-penha #execucao #superiores -->

## 4 Responsáveis e Contato

| Papel | Pessoa (iniciais) | Observação |
|---|---|---|
| Advogado responsável | | |
| Revisor humano (2ª camada) | | |
| Apoio (estagiário/secretaria) | | |
| Contato do cliente/família | | |

## 5 Documentos dos Autos

| # | Documento | Status (RECEBIDO / FALTANTE / SOLICITADO) | Local (raw/...) | Prioridade |
|---|---|---|---|---|

## 6 Histórico de Alterações

| Data | Agente | Alteração |
|---|---|---|
