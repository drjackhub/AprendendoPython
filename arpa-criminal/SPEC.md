# ESPECIFICAÇÃO COMUM — ARPA-CRIMINAL (ARPA-C)

> Documento de contrato entre todos os componentes. Toda skill, agente e template DEVE obedecer aos nomes, caminhos, gatilhos e formatos aqui definidos. Em caso de conflito, este arquivo prevalece.

## 1. O que é

ARPA-C = **Arquitetura de Redação Processual Algorítmica — Criminal**. É a adaptação para o âmbito penal do protocolo ARPA cível do Douglas (Advogado de Elite & Engenheiro de Petições Cíveis, 5 módulos, Deep Reasoning Protocol, catálogo de skills por progressive disclosure, guardrails de jurisprudência com CoVe e regras de estilo forense), agora:

1. **Distribuída em múltiplos agentes** (subagentes do Claude Code), cada um responsável por um módulo do algoritmo, com passagem de arquivos (handoff) entre pastas, no padrão do `/workflow` (workflow-coordinator) do Douglas;
2. **Integrada à gestão do escritório** (gestão de processos, gestão de pessoas, gestão do escritório e automação com IA), com base nos cadernos do NotebookLM do Douglas sobre esses temas.

Persona-base: **Advogado Criminalista de Elite & Engenheiro de Peças Criminais** — 30 anos de experiência, rigor acadêmico de Doutor, garantista, domínio de Direito Penal (parte geral e especial), Processo Penal, Execução Penal, legislação penal extravagante e prática de Tribunais (TJ, TRF, STJ, STF). Atua predominantemente na DEFESA, mas o protocolo deve funcionar também para assistência de acusação / vítima (ex.: Maria da Penha) quando o polo for informado.

## 2. Gatilhos (slash commands)

| Gatilho | Skill (pasta) | Papel |
|---|---|---|
| `/arpa-criminal` (alias `/arpac`) | `skills/arpa-criminal/` | Orquestrador do protocolo e da esteira multiagente |
| `/decomposicao-penal` | `skills/decomposicao-penal/` | Decomposição atômica penal + Matriz de Provas (ônus da acusação, art. 156 CPP, in dubio pro reo) |
| `/prazos-penais` | `skills/prazos-penais/` | Prazos processuais penais (art. 798 e 798-A CPP, Súmulas 310 e 710 STF, JECRIM, ECA, LEP, recursos aos Tribunais Superiores) |
| `/dosimetria` | `skills/dosimetria-prescricao/` | Dosimetria trifásica, regime, substituição, sursis, e **prescrição** (arts. 107-119 CP) |
| `/prescricao` | `skills/dosimetria-prescricao/` | (mesma skill acima) |
| `/provas-nulidades` | `skills/provas-nulidades/` | Provas ilícitas (art. 157 CPP), cadeia de custódia (arts. 158-A a 158-F), reconhecimento (art. 226), busca pessoal/domiciliar, interceptação, prova digital, nulidades |
| `/liberdade` | `skills/liberdade-hc/` | Prisão em flagrante, preventiva, temporária, cautelares diversas (art. 319), audiência de custódia, Habeas Corpus e revisão nonagesimal (art. 316, p.ú.) |
| `/negocial` | `skills/justica-negocial/` | ANPP (art. 28-A CPP), transação penal e sursis processual (Lei 9.099/95), colaboração premiada (Lei 12.850/13) |
| `/gestao-processos` | `skills/gestao-processos-criminais/` | Esteira (BPM/Kanban) dos casos criminais, POPs, SLAs, controladoria jurídica, painel de prazos, prioridade réu preso |
| `/gestao-pessoas` | `skills/gestao-pessoas-escritorio/` | Matriz RACI, delegação por senioridade, revisão em duas camadas, feedback, capacitação, carga de trabalho |
| `/gestao-escritorio` | `skills/gestao-escritorio/` | Atendimento/intake, conflito de interesses, contrato de honorários criminais, compliance OAB/LGPD, financeiro, KPIs, relacionamento com cliente preso e família |
| `/automacao` | `skills/automacao-ia-juridica/` | Pipeline de automação: PJe → OCR/Docling → mapa dos autos → wiki do caso → ARPA-C → .docx; Obsidian, NotebookLM, napkin |

Skills **já existentes** do Douglas que o ARPA-C deve acionar (NÃO recriar, apenas referenciar pelo gatilho):
`/recursos-penais`, `/crimes-contra-vida`, `/crimes-contra-patrimonio`, `/crimes-contra-dignidade-sexual`, `/crimes-contra-administracao-publica`, `/lei-de-drogas`, `/estatuto-desarmamento`, `/contravencoes-penais`, `/maria-da-penha`, `/execucao-penal`, `/superiores`, `/recurso-especial`, `/recurso-extraordinario`, `/jurisprudencia`, `/decomposicao` (cível — no crime usar `/decomposicao-penal`), `/peticao`, `/napkin`, `/skill-creator`, `/deep-research`, `/docx`, `/pdf`.

Atenção: `/prazos` existente é **cível (CPC)**. No crime usar sempre `/prazos-penais` (o CPC art. 219 — dias úteis — NÃO se aplica ao processo penal).

## 3. Agentes (subagentes do Claude Code, em `agents/*.md` → instalar em `.claude/agents/`)

| # | Nome do agente (`name:`) | Módulo ARPA-C | Lê | Escreve |
|---|---|---|---|---|
| 1 | `arpac-triagem` | M0 Triagem e Intake | `raw/`, dados do cliente | `analise/01-triagem.md`, `wiki/ficha.md`, linha no `Shared/painel-casos.md` |
| 2 | `arpac-auditor-autos` | M1 Ingest + Decomposição atômica | `raw/`, `wiki/ficha.md` | `wiki/index.md`, `wiki/cronologia.md`, `wiki/fatos-atomicos.md`, `analise/02-decomposicao.md` |
| 3 | `arpac-prazos-prescricao` | M1 Auditoria de prazos e prescrição | `wiki/cronologia.md`, `wiki/ficha.md` | `wiki/prazos.md`, `analise/03-prazos-prescricao.md` |
| 4 | `arpac-estrategista` | M2 Árvore de teses + SWOT, M3 Blueprint | `analise/01..03`, `wiki/*` | `analise/04-teses.md`, `analise/06-blueprint.md` |
| 5 | `arpac-pesquisador` | Jurisprudência RAG + CoVe | `analise/04-teses.md` | `analise/05-jurisprudencia.md` |
| 6 | `arpac-revisor` | M4 Validação (CoVe + red team acusação/juiz) | `analise/06-blueprint.md`, `analise/05-jurisprudencia.md`, minuta | `analise/07-revisao.md` |
| 7 | `arpac-redator` | M5 Redação e compilação final | `analise/06-blueprint.md`, `analise/05`, `analise/07`, `Shared/estilo.md` | `minutas/<peca>-vN.md` (e `.docx` via skill `/docx` se disponível) |
| 8 | `arpac-controller` | Gestão: painel, kanban, POP, KPIs, napkin | tudo | `gestao/status.md`, `gestao/log.md`, `Shared/painel-casos.md`, `napkin_log.md` |

Regras para os agentes:
- Subagentes NÃO criam outros subagentes. Quem orquestra é a sessão principal com a skill `/arpa-criminal`.
- Cada agente escreve SOMENTE nos seus arquivos de saída (tabela acima). `raw/` é imutável (somente leitura).
- Todo fato registrado leva **fonte** (id/fl. dos autos) e **confiança** (ALTA = 2+ fontes ou documento oficial; MÉDIA = 1 fonte; BAIXA/INFERIDO = exige validação humana).
- Nunca inventar jurisprudência, número de processo, relator ou data. Sem verificação → `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.
- Dado faltante → `[PENDENTE: descrição]` e inclusão na lista de perguntas socráticas.
- Ao final, cada agente devolve ao orquestrador um resumo curto (≤ 15 linhas): o que fez, arquivos gravados, pendências, alertas (ex.: RÉU PRESO, PRESCRIÇÃO IMINENTE, PRAZO < 48h).
- Agentes podem usar as skills do catálogo (ferramenta Skill ou leitura do SKILL.md) e, se disponível no computador local, o MCP do NotebookLM (ver §6).

## 4. Esteira (pipeline) e portões humanos

```
M0  arpac-triagem ───────────────► 01-triagem.md + ficha.md
                                      │
M1  ┌─ arpac-auditor-autos ──────────► 02-decomposicao.md (+ wiki)      [PARALELO]
    └─ arpac-prazos-prescricao ──────► 03-prazos-prescricao.md          [PARALELO]
                                      │
    ORQUESTRADOR: Diagnóstico preliminar + PERGUNTAS SOCRÁTICAS
    ═══ PORTÃO 1 — Douglas responde e digita "Aprovado" ═══
                                      │
M2  arpac-estrategista (árvore + SWOT + skills temáticas) ► 04-teses.md
    arpac-pesquisador (jurisprudência verificada) ────────► 05-jurisprudencia.md
M3  arpac-estrategista (poda + blueprint + mapa de pedidos) ► 06-blueprint.md
M4  arpac-revisor (CoVe + red team MP/juiz) ─────────────► 07-revisao.md
    ═══ PORTÃO 2 — Douglas aprova o blueprint ("Aprovado") ═══
M5  arpac-redator ─────────────────────────────────────────► minutas/<peca>-v1.md/.docx
    arpac-revisor (checagem final da minuta) ──────────────► 07-revisao.md (seção "Minuta")
    arpac-controller (painel, kanban, log, napkin) ────────► gestao/*, Shared/painel-casos.md
    ═══ PORTÃO 3 — Douglas revisa, assina e protocola (a IA NUNCA protocola) ═══
```

Modos de execução do orquestrador:
- **Completo** (padrão): todos os módulos com os 3 portões.
- **Urgente** (réu preso / prazo < 48h / flagrante): M0 → M1 (prazos primeiro) → Portão 1 reduzido (só perguntas essenciais) → M3 → M5 → M4 → Portão 3. Ex.: HC, pedido de liberdade, resposta à acusação no último dia.
- **Revisão de minuta** (Douglas já tem a peça): Parse da minuta → M4 → relatório de refinamento (como o "ARPA Módulo 4.0 — Validação e Refinamento de Draft" que o Douglas já usa).
- **Gestão** (sem peça): só `arpac-controller` + skills de gestão (painel semanal, distribuição de tarefas, KPIs).

## 5. Estrutura do espaço de trabalho (vault / diretório do Claude Code)

```
[ESCRITORIO-CRIMINAL]/
├── CLAUDE.md                     # cópia de templates/CLAUDE.md (regras do escritório + ARPA-C)
├── SCHEMA.md                     # governança do vault (INGEST / QUERY / LINT)
├── memory.md                     # aprendizados consolidados (napkin)
├── napkin_log.md                 # log de incidentes/aprendizados
├── Shared/
│   ├── escritorio.md             # dados do escritório, advogados, OAB, endereço p/ intimações
│   ├── estilo.md                 # regras de estilo e formatação (Century Gothic etc.)
│   ├── painel-casos.md           # quadro Kanban de todos os casos criminais
│   ├── equipe.md                 # pessoas, papéis, RACI, carga
│   ├── calendario.md             # feriados/suspensões locais (TJPE etc.)
│   ├── painel-semanal-AAAA-MM-DD.md  # relatório semanal gerado pelo arpac-controller
│   ├── modelos/                  # índice mestre de teses e modelos criminais (eixos A–H), gravado só após "Aprovado"
│   └── conhecimento/             # exports dos cadernos NotebookLM em .md (automacao, pessoas, processos, escritorio)
└── casos/
    └── <CNJ-ou-apelido>/
        ├── raw/                  # autos (PDF → MD via Docling). IMUTÁVEL
        ├── wiki/                 # index.md, ficha.md, cronologia.md, fatos-atomicos.md, prazos.md
        ├── analise/              # 01-triagem ... 07-revisao
        ├── minutas/              # <peca>-vN.md / .docx
        └── gestao/               # status.md, log.md
```

Colunas do Kanban (`Shared/painel-casos.md`), em ordem:
`ENTRADA` → `TRIAGEM` → `DIAGNÓSTICO (aguarda Douglas)` → `ESTRATÉGIA` → `REDAÇÃO` → `REVISÃO` → `PRONTO P/ PROTOCOLO` → `PROTOCOLADO / ACOMPANHAMENTO` → `ARQUIVADO`.
Etiquetas obrigatórias: `#reu-preso`, `#prazo-fatal`, `#prescricao-risco`, `#juri`, `#maria-da-penha`, `#execucao`, `#superiores`.

## 6. Integração com os cadernos do NotebookLM

Cadernos (nomes a confirmar pelo Douglas em `notebooklm/cadernos.md`):
- **AUTOMAÇÃO COM IA** → consumido por `/automacao`, orquestrador e `arpac-controller`.
- **GESTÃO DE PESSOAS** → `/gestao-pessoas` e `arpac-controller` (distribuição, revisão, feedback).
- **GESTÃO DE PROCESSOS** → `/gestao-processos`, `arpac-triagem` e `arpac-controller` (esteira, POPs, SLAs).
- **GESTÃO DE ESCRITÓRIOS** → `/gestao-escritorio`, `arpac-triagem` (intake, honorários) e `arpac-controller` (KPIs).

Mecanismo, em ordem de preferência:
1. Se houver ferramentas MCP do NotebookLM disponíveis na sessão (`mcp__notebooklm__*` ou equivalente), consultar o caderno correspondente com as perguntas-padrão do `notebooklm/cadernos.md` e citar a resposta como fonte `[NotebookLM: <caderno>]`.
2. Senão, ler `Shared/conhecimento/<caderno>.md` (export manual das respostas do NotebookLM).
3. Senão, aplicar as diretrizes-base da própria skill e registrar `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`.

## 7. Regras de estilo (herdadas do ARPA cível do Douglas — manter idênticas)

- Linguagem técnica, persuasiva, narrativa e elegante; sem latinismos desnecessários.
- Parágrafos curtos e silogísticos: Premissa maior → Premissa menor → Conclusão.
- **Proibição de bullet points** nos blocos de fatos e fundamentação das peças definitivas; listas só em qualificação, rol de documentos/testemunhas e pedidos.
- Formatação: Century Gothic 12, espaçamento 1,5, margens 1,25; citações > 4 linhas em Century Gothic 11, espaçamento 1, recuo 4; justificado; sem espaço entre parágrafos; tópicos `1 PRIMEIRO TÓPICO` / `1.1 Primeiro subtópico` em negrito.
- Nota de rodapé (fonte 10, justificada) na primeira menção de cada artigo/súmula, sem repetir. Modelo: `CPP, Art. 386. O juiz absolverá o réu, mencionando a causa na parte dispositiva, desde que reconheça: (...) VII – não existir prova suficiente para a condenação.` / `STJ, Súmula n. 231. A incidência da circunstância atenuante não pode conduzir à redução da pena abaixo do mínimo legal.`
- Padrão de citação de julgado: `"[trecho da ementa]" (Tribunal, classe/nº, Relator: Min./Des. Nome, Órgão Julgador, julgado em DD/MM/AAAA, publicado em DD/MM/AAAA)`.

## 8. Padrão de redação dos SKILL.md (igual às skills do Douglas)

Frontmatter YAML com `name` (kebab-case = nome da pasta) e `description` (em português, dizendo o que faz e QUANDO ativar, com gatilho e palavras-chave). Corpo em português com: título com emoji, `⚡ Gatilho e Ativação`, persona/modo de operação, metodologia, teses/roteiros, **checklist obrigatório** com `- [ ]`, integração com o ARPA-C (que agente usa, quais arquivos lê/escreve), integração NotebookLM (quando aplicável), e `⚙️ Interface de Expansão` (futuros scripts). Tamanho-alvo: 80 a 250 linhas, denso, sem enchimento.

## 9. Rigor jurídico (obrigatório para quem escreve conteúdo jurídico)

- Cite apenas dispositivos legais e súmulas de que tenha certeza (texto e número). Em caso de dúvida sobre número, redação vigente ou alteração legislativa recente, use `[VERIFICAR REDAÇÃO VIGENTE]`.
- Precedentes: só os amplamente conhecidos e de identificação segura (ex.: STJ HC 598.886/SC sobre reconhecimento pessoal; STF HC 126.292 e ADCs 43/44/54 sobre execução provisória). Na dúvida: `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. Nunca inventar.
- Considere a legislação até 2026 mas sinalize incerteza sobre alterações posteriores a 2024 com `[VERIFICAR REDAÇÃO VIGENTE]`.
