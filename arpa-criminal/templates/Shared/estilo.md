---
documento: estilo
atualizado_em: ""
origem: "SPEC ARPA-C §7 (herdado do ARPA cível — manter idêntico)"
---

# Regras de Estilo e Formatação das Peças

<!-- Lido obrigatoriamente pelo arpac-redator (M5) e pelo arpac-revisor (StyleCheck). Alterações de estilo pedidas pelo Douglas entram na seção 8 e, quando consolidadas, no memory.md. -->

## 1 Linguagem

A linguagem é técnica, persuasiva, narrativa e elegante. Evitam-se latinismos desnecessários e o preciosismo hermético de jargões técnicos em excesso.

## 2 Parágrafos Silogísticos

Os parágrafos são curtos e silogísticos. Cada argumento percorre a sequência Premissa maior (regra legal ou precedente) → Premissa menor (subsunção do fato dos autos, com indicação de id/fl.) → Conclusão (efeito processual postulado).

## 3 Regra de Ouro sobre Listas (Proibição de Bullet Points)

Nas peças definitivas é terminantemente proibido usar bullet points (`*`, `-`), travessões ou listas numeradas nos blocos de narrativa fática e de fundamentação jurídica. A redação é estritamente narrativa e corrida, com parágrafos encadeados.

Listas são permitidas unicamente em três lugares: (i) qualificação das partes no preâmbulo; (ii) rol de documentos anexos e rol de testemunhas; (iii) pedidos e requerimentos.

## 4 Formatação Técnica

| Elemento | Regra |
|---|---|
| Fonte do corpo | Century Gothic 12 |
| Espaçamento entre linhas | 1,5 |
| Margens | 1,25 — unidade: [PREENCHER: cm ou polegadas]; enquanto não preenchido, o .docx usa 1,25 polegada (3,17 cm) e a minuta registra [PENDENTE: confirmar unidade das margens] |
| Alinhamento | Justificado |
| Espaço entre parágrafos | Nenhum (0 pt antes e depois) |
| Citação direta com mais de 4 linhas | Century Gothic 11, espaçamento simples (1,0), recuo de 4 cm à esquerda, justificada |
| Tópicos | `1 PRIMEIRO TÓPICO` (caixa alta) e `1.1 Primeiro subtópico`, ambos em negrito e justificados, numeração arábica sem ponto final |
| Notas de rodapé | Century Gothic 10, justificadas |

## 5 Notas de Rodapé de Dispositivos e Súmulas

Na primeira menção de cada artigo, parágrafo, inciso ou súmula, insere-se nota de rodapé logo após o número mencionado, transcrevendo o texto. Todo dispositivo ou súmula citado na peça tem a sua nota, mas a nota nunca se repete: menções posteriores do mesmo dispositivo não recebem nova nota.

Modelo de dispositivo: `CPP, Art. 386. O juiz absolverá o réu, mencionando a causa na parte dispositiva, desde que reconheça: (...) VII – não existir prova suficiente para a condenação.`

Modelo de súmula: `STJ, Súmula n. 231. A incidência da circunstância atenuante não pode conduzir à redução da pena abaixo do mínimo legal.`

Em Markdown, a nota usa a sintaxe `[^n]` no texto e `[^n]: <texto>` ao final da minuta; no .docx vira nota de rodapé real do Word. Texto de lei sem certeza de redação vigente recebe `[VERIFICAR REDAÇÃO VIGENTE]` dentro da nota, até confirmação humana.

## 6 Citação de Julgados

Padrão obrigatório: `"[trecho da ementa]" (Tribunal, classe/nº, Relator: Min./Des. Nome, Órgão Julgador, julgado em DD/MM/AAAA, publicado em DD/MM/AAAA)`.

Somente julgados com Status VERIFICADO em `analise/05-jurisprudencia.md` entram na peça. Sem verificação, o trecho é substituído por `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.

## 7 Estrutura-Padrão das Peças Criminais

Endereçamento em caixa alta; número do processo; preâmbulo com qualificação (lista permitida); `1 SÍNTESE DOS FATOS` (ou `DOS FATOS`); `2 PRELIMINARMENTE` (quando houver); `3 DO MÉRITO`; tópicos de pena e regime (quando cabíveis); `DOS PEDIDOS` (lista permitida, em ordem de eventualidade); rol de testemunhas e documentos (lista permitida); fecho e assinatura conforme `Shared/escritorio.md`.

## 8 Preferências do Escritório

| Preferência | Regra | Desde |
|---|---|---|
| Termos preferidos | [PREENCHER] | |
| Termos a evitar | [PREENCHER] | |
| Forma de tratamento do juízo | [PREENCHER: ex. "Vossa Excelência"] | |
| Designação do cliente na peça | [PREENCHER: ex. "o Acusado", "o Requerente", "o Paciente"] | |
