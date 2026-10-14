# CLAUDE.md — Escritório Criminal (ARPA-C)

Este arquivo contém as regras permanentes do vault do escritório. Leia-o no início de toda sessão, junto com `SCHEMA.md` (governança dos dados) e `memory.md` (aprendizados consolidados).

## 1 Identidade do Escritório

| Campo | Valor |
|---|---|
| Escritório | [PREENCHER] |
| Advogado titular | [PREENCHER] — OAB/PE nº [PREENCHER] |
| Cidade-sede | Timbaúba/PE [CONFIRMAR] |
| Área de atuação | Direito Penal, Processo Penal e Execução Penal (predominantemente defesa; também assistência de acusação e vítimas) |
| Dados completos | `Shared/escritorio.md` |

## 2 Regra de Ouro: Peça Criminal Passa pelo ARPA-C

Toda análise de caso criminal e toda peça criminal (resposta à acusação, memoriais, habeas corpus, pedidos de liberdade, recursos, queixa-crime, manifestações em execução e em medidas protetivas) passa obrigatoriamente pelo orquestrador `/arpa-criminal` (alias `/arpac`). Não se redige peça definitiva sem diagnóstico prévio e perguntas socráticas respondidas.

No crime, nunca usar as skills cíveis `/prazos` (CPC, dias úteis) e `/decomposicao`: usar `/prazos-penais` e `/decomposicao-penal`. O art. 219 do CPC não se aplica ao processo penal.

A esteira tem três portões humanos, e só a palavra "Aprovado" do Douglas abre cada um: Portão 1 (diagnóstico e perguntas socráticas), Portão 2 (blueprint revisado) e Portão 3 (minuta final, que o advogado revisa, assina e protocola). Modos: completo, urgente (réu preso, flagrante ou prazo em até 48 horas), revisão de minuta e gestão.

## 3 Agentes da Esteira

| Agente | Módulo | Grava em |
|---|---|---|
| `arpac-triagem` | M0 triagem e intake | `analise/01-triagem.md`, `wiki/ficha.md`, card no Kanban |
| `arpac-auditor-autos` | M1 ingest e decomposição | `wiki/index.md`, `wiki/cronologia.md`, `wiki/fatos-atomicos.md`, `analise/02-decomposicao.md` |
| `arpac-prazos-prescricao` | M1 prazos e prescrição | `wiki/prazos.md`, `analise/03-prazos-prescricao.md` |
| `arpac-estrategista` | M2 teses e SWOT; M3 blueprint | `analise/04-teses.md`, `analise/06-blueprint.md` |
| `arpac-pesquisador` | jurisprudência verificada (CoVe) | `analise/05-jurisprudencia.md` |
| `arpac-revisor` | M4 validação e red team | `analise/07-revisao.md` |
| `arpac-redator` | M5 redação final | `minutas/<peca>-vN.md` e `.docx` |
| `arpac-controller` | gestão, Kanban, log, napkin | `gestao/*`, `Shared/painel-casos.md`, `napkin_log.md`, `memory.md` |

Para abrir um caso: copiar `caso-modelo/` para `casos/<CNJ-ou-apelido>/`, depositar os autos em `raw/` e acionar `/arpa-criminal`.

## 4 Governança dos Dados (resumo do SCHEMA.md)

A pasta `raw/` é imutável. Todo fato leva fonte (id/fl.) e confiança (ALTA, MÉDIA ou BAIXA/INFERIDO). Em qualquer consulta a um caso, ler primeiro `wiki/index.md` e só abrir `raw/` quando a wiki não responder. Dado faltante é marcado `[PENDENTE: descrição]` e vira pergunta socrática. Cada agente grava somente os seus arquivos.

## 5 Estilo das Peças (resumo — íntegra em `Shared/estilo.md`)

A linguagem é técnica, persuasiva, narrativa e elegante, sem latinismos desnecessários. Os parágrafos são curtos e silogísticos (premissa maior, premissa menor, conclusão). Fatos e fundamentação são escritos em prosa corrida, sem bullet points, travessões ou listas; listas só na qualificação, no rol de documentos e testemunhas e nos pedidos. Formatação: Century Gothic 12, espaçamento 1,5, margens 1,25, justificado, sem espaço entre parágrafos; citações com mais de 4 linhas em Century Gothic 11, espaçamento simples, recuo 4; tópicos `1 TÍTULO` e `1.1 Subtítulo` em negrito. Nota de rodapé (fonte 10) na primeira menção de cada artigo ou súmula, sem repetição. Julgados no padrão `"[trecho]" (Tribunal, classe/nº, Relator: Min./Des. Nome, Órgão Julgador, julgado em DD/MM/AAAA, publicado em DD/MM/AAAA)`.

## 6 Rigor Jurídico

Nunca inventar jurisprudência, número de processo, relator, data ou ementa. Só entra na peça precedente com Status VERIFICADO em `analise/05-jurisprudencia.md`; sem verificação, usar `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. Dispositivo legal com dúvida sobre número, redação vigente ou alteração recente recebe `[VERIFICAR REDAÇÃO VIGENTE]`.

## 7 Sigilo Profissional e LGPD

O conteúdo deste vault é coberto pelo sigilo profissional do advogado (Estatuto da Advocacia e Código de Ética e Disciplina da OAB) e pela LGPD (Lei 13.709/18). Regras práticas: pastas, cards e nomes de arquivo usam CNJ, apelido neutro e iniciais, nunca nome completo ou CPF; em processos sob segredo de justiça, vítimas aparecem só por iniciais em todo o vault; buscas na internet pesquisam a tese, jamais o nome do cliente ou dados do caso; dados de clientes não são enviados a serviços externos sem autorização expressa do Douglas; `Shared/conhecimento/` não recebe dados de casos; nada do vault é copiado para fora dele sem pedido do Douglas.

## 8 Limites de Atuação da IA

A IA nunca protocola peças, nunca assina, nunca envia e-mail, mensagem ou WhatsApp, e nunca contata cliente, familiar, vítima, testemunha, Ministério Público, autoridade policial ou juízo. Ela prepara; o humano revisa e executa. Promessas de resultado ao cliente são vedadas em qualquer texto produzido.

## 9 Ciclo de Auto-melhoria

Ao final de cada caso ou quando surgir erro relevante, o `arpac-controller` registra o aprendizado em `napkin_log.md` (padrão `/napkin`: Data, Tarefa, Problema, Solução, Diretriz de Futuro) e o consolida em `memory.md`. Periodicamente, o Douglas pode pedir: "Atualize o CLAUDE.md com base nas interações recentes". Nesse caso, a IA lê `memory.md`, `napkin_log.md` e os registros recentes de `casos/*/gestao/log.md`, propõe as alterações em forma de diff na seção 10 abaixo e só grava após o "Aprovado" do Douglas.

## 10 Regras Aprendidas

<!-- Regras incorporadas pelo ciclo de auto-melhoria. Formato: "AAAA-MM-DD — regra — origem (napkin/caso)". -->

| Data | Regra | Origem |
|---|---|---|
