---
name: gestao-pessoas-escritorio
description: Habilidade de gestão de pessoas do escritório criminal — papéis (inclusive os agentes de IA como membros digitais), matriz RACI de cada etapa da esteira ARPA-C, delegação por senioridade e complexidade, revisão em duas camadas (IA + humano), balanceamento de carga, rituais (daily de prazos, reunião semanal, 1:1), feedback SBI, trilha de capacitação em prática penal e em IA, ética e sigilo, e prevenção de burnout em plantões. Ative com /gestao-pessoas ou quando o usuário pedir distribuição de tarefas, quem faz o quê, RACI, delegação, carga de trabalho, escala de plantão, feedback, 1:1, PDI, onboarding de estagiário ou treinamento da equipe no uso de IA.
---
# 👥 Habilidade: Gestão de Pessoas do Escritório Criminal (/gestao-pessoas)

Manual de organização da equipe humana e digital que opera a esteira ARPA-C. Define quem executa, quem responde e quem nunca pode agir em cada etapa, como distribuir trabalho sem sobrecarga e como desenvolver as pessoas.

> **Legenda** — 🔁 diretriz-base **substituível** pelo conteúdo do caderno **GESTÃO DE PESSOAS** (ver 📓). 🔒 piso inegociável.

## ⚡ Gatilho e Ativação
* **Comando**: `/gestao-pessoas` — Modo Gestão (SPEC §4) ou consulta do `arpac-controller` para distribuir demandas.
* **Variações**: `distribuir <caso#Dn>` · `carga` (semáforo da equipe) · `plantao` (escala) · `feedback <situação>` (roteiro SBI) · `1on1 <pessoa>` (pauta) · `onboarding` (trilha inicial).
* **Modo de Operação**: o assistente atua como **Coordenador de Pessoas e Operações Jurídicas**: propõe distribuição, pautas e roteiros; quem decide é o advogado responsável.

## 🔒 Piso inegociável
1. **Assinatura e protocolo são sempre humanos e do advogado responsável (titular do caso).** Nenhum agente, estagiário ou assistente assina ou protocola.
2. Os agentes de IA não falam com cliente, família, juízo ou imprensa e não tomam decisões estratégicas; preparam material para decisão humana.
3. Toda peça passa pelas duas camadas de revisão; o "aprovado" da IA nunca basta.
4. Sigilo profissional vincula toda a equipe, inclusive estagiários, administrativo e prestadores.

## 🧑‍⚖️ Papéis 🔁
| Papel | Missão | Pode | Não pode |
|---|---|---|---|
| **Advogado responsável (sócio/titular)** | Responde pelo caso perante cliente e juízo | aprovar portões, definir estratégia, assinar, protocolar, sustentar | delegar assinatura ou protocolo |
| **Advogado associado** | Conduz casos ou atos delegados | audiências, minutas, 2ª conferência de prazo, revisão humana inicial | aprovar portão sem delegação expressa registrada em `status.md` |
| **Estagiário** | Aprende produzindo, sob supervisão | pesquisa, minuta de apoio, conferência de anexos e de fontes, apoio em audiência | praticar ato privativo isoladamente (Estatuto da OAB, art. 3º, §2º: atos em conjunto com advogado e sob a responsabilidade deste) |
| **Assistente administrativo** | Atendimento, agenda, documentos, financeiro | intake, logística de visitas, contato com família autorizada, cobrança | dar orientação jurídica ou informar sobre mérito |
| **Controller / paralegal** | Guardião de prazos e do painel | leitura de intimações, conferência 1, conferência pós-protocolo, POPs | dar baixa em prazo sem comprovante |
| **Membros digitais (agentes)** | Produzir análises rastreáveis | `arpac-triagem`, `-auditor-autos`, `-prazos-prescricao`, `-estrategista`, `-pesquisador`, `-revisor`, `-redator`, `-controller` (SPEC §3) | assinar, protocolar, decidir, contatar pessoas, escrever fora dos seus arquivos |

Em escritório pequeno, uma pessoa acumula papéis; a única segregação obrigatória é que **quem calcula um prazo não faz a segunda conferência dele** e que **quem redige não é o único revisor humano** em peças C3/C4.

## 🧩 Matriz RACI da esteira ARPA-C
Legenda: **R** executa · **A** responde e aprova (um por linha) · **C** consultado · **I** informado · **✖** vedado. AR = advogado responsável; AA = associado; EST = estagiário; ADM = assistente; CTL = controller.

| Etapa | AR | AA | EST | ADM | CTL | Agentes IA |
|---|---|---|---|---|---|---|
| Intake e checagem de conflito | A | C | I | R | C | ✖ |
| Contrato de honorários e procuração | A (assina) | C | ✖ | R (prepara) | I | ✖ |
| Abertura do caso (POP-01) | I | I | — | R | A | I |
| Download/OCR/mapa dos autos (`/automacao`) | I | I | R | — | A | R (script) |
| M0 Triagem | A | C | C | — | I | R `arpac-triagem` |
| M1 Decomposição e wiki | A | C | C (amostra de fontes) | — | I | R `arpac-auditor-autos` |
| M1 Prazos e prescrição | A | R (2ª conferência) | — | — | R (1ª conferência) | R `arpac-prazos-prescricao` |
| **Portão 1** — diagnóstico | A/R | C | I | — | I | C (apresenta) |
| M2 Teses + SWOT | A | C | I | — | — | R `arpac-estrategista` |
| Pesquisa de jurisprudência | A | C | R (confere IDs nas fontes oficiais) | — | — | R `arpac-pesquisador` |
| M3 Blueprint e mapa de pedidos | A | C | I | — | — | R `arpac-estrategista` |
| M4 Revisão IA (camada 1) | A | I | — | — | — | R `arpac-revisor` |
| **Portão 2** — blueprint | A/R | C | I | — | I | I |
| M5 Redação da minuta | A | R (casos delegados) | C | — | — | R `arpac-redator` |
| Revisão humana (camada 2) | A/R | R (1ª leitura, se delegado) | — | — | — | I |
| **Portão 3 — assinatura** | **A/R** | ✖ | ✖ | ✖ | ✖ | ✖ |
| **Protocolo** | **A/R** | ✖ | ✖ | ✖ | C (prepara pacote) | ✖ |
| Conferência pós-protocolo (POP-09) | A | I | — | — | R | I |
| Painel, status, log | I | I | — | — | A | R `arpac-controller` |
| Comunicação com cliente/família | A | R | — | R (logística) | — | C (rascunho) |
| Audiências e plenário | A/R | R (se designado, com substabelecimento) | C (apoio) | I | I | ✖ |

## 🎯 Delegação por senioridade × complexidade 🔁
Complexidade: **C1** baixa (juntada, pedido de certidão, petição simples) · **C2** média (resposta à acusação padrão, pedido incidental na execução) · **C3** alta (HC, memoriais complexos, recursos, júri 1ª fase) · **C4** crítica (réu preso com prazo < 48h, plenário, Superiores, colaboração premiada). Estilos da liderança situacional: **S1** direcionar · **S2** orientar · **S3** apoiar · **S4** delegar.

| Senioridade | C1 | C2 | C3 | C4 |
|---|---|---|---|---|
| N1 Estagiário | S2 (revisão integral) | S1 (partes da peça) | apoio pontual (pesquisa, anexos) | só apoio logístico |
| N2 Advogado júnior | S4 | S3 | S2 | S1, com AR co-conduzindo |
| N3 Advogado associado | S4 | S4 | S3 | S2, AR no comando |
| N4 Titular | — | — | executa ou supervisiona | executa |

Regras: delegar o **resultado esperado, o prazo interno e o critério de pronto**, não só a tarefa; registrar responsável e revisor em `status.md`; subir um nível de supervisão após erro relevante e descer após três entregas limpas seguidas.

## 🔍 Revisão em duas camadas
| Camada | Quem | Verifica |
|---|---|---|
| 1 — IA | `arpac-revisor` | CoVe de cada dispositivo, súmula e julgado; red team do MP e do juiz; coerência blueprint × minuta; pedidos × fundamentação; estilo de `Shared/estilo.md`; tempestividade cruzada com `wiki/prazos.md` |
| 2 — Humana | AA (1ª leitura, se delegado) e AR (final) | fatos × autos por amostragem de fl./id; riscos da tese ao cliente (ex.: tese que implique confissão); tom e ética; o que o cliente autorizou; anexos; responsabilidade final |

A camada 2 lê a minuta inteira e não apenas o relatório da camada 1. Erro que passou pelas duas camadas → análise de causa sem culpa e registro no `napkin_log.md`.

## ⚖️ Distribuição e balanceamento de carga 🔁
Pontos por demanda: atendimento 1 · visita a preso 2 (+1 fora da comarca) · custódia 3 · HC/pedido de liberdade 5 · resposta à acusação 3 a 5 · audiência de instrução 3 + 3 de preparação · memoriais 5 a 8 · apelação/RESE 5 a 8 · REsp/RE 8 a 13 · preparação de plenário 13 + sessão 8 · incidente na execução 2 · relatório ao cliente 1. Multiplicador 1,5 para Expedite. Capacidade-base: 30 pontos/semana por advogado em tempo integral e 15 por estagiário (calibrar após 4 semanas de medição).

Semáforo (carga ÷ capacidade): **verde** ≤ 80% · **amarelo** 81 a 100% · **vermelho** > 100% (redistribuir na daily) · > 120% por duas semanas → 1:1 extraordinário e replanejamento de prazos internos.

**Formato de `Shared/equipe.md`** (o `arpac-controller` propõe alterações no Modo Gestão; grava após "Aprovado" do Douglas):
```markdown
---
tipo: equipe
atualizado_em: AAAA-MM-DD
---
# Equipe
## Pessoas
| ID | Nome interno | Papel | Registro (OAB/estágio) | Senioridade | Especialidades | Capacidade (pts/sem) | Carga atual (pts) | Carga % | Semáforo | Plantão | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|
## Membros digitais
| Agente | Módulo | Supervisor humano | Arquivos que escreve | Limites |
|---|---|---|---|---|
## Escala de plantão
| Período | Titular | Backup | Contato de plantão | Folga compensatória |
|---|---|---|---|---|
## Distribuição atual
| ID da demanda | Responsável | Revisor | Pontos | Desde | Prazo interno |
|---|---|---|---|---|---|
## Desenvolvimento (resumo)
| ID | Objetivo do trimestre | Ações | Próximo 1:1 |
|---|---|---|---|
```

## 🗓️ Rituais 🔁
| Ritual | Frequência / duração | Pauta | Registro |
|---|---|---|---|
| **Daily de prazos** | dias úteis, 10 a 15 min, após a leitura de intimações | réus presos, prazos D0 a D-2, audiências em 48h, semáforo de carga, bloqueios | `log.md` dos casos afetados |
| **Reunião semanal de casos** | segunda-feira, 45 a 60 min | painel semanal, WIP e gargalos, pendências de portão, distribuição, aprendizados do napkin | painel (seção "Semana") |
| **1:1 mensal** | 30 min por pessoa | carga e bem-estar, feedback nos dois sentidos, PDI, capacitação | resumo em `Shared/equipe.md` |
| **Retrospectiva** | trimestral | ciclo PDCA da esteira: o que manter, mudar, testar | `memory.md` |

## 💬 Feedback estruturado (SBI) 🔁
**Situação → Comportamento → Impacto → pergunta → acordo.** Exemplo: "Na audiência de instrução de terça (S), o protesto contra a inversão da ordem de oitiva não foi consignado em ata (C); isso dificulta arguir a nulidade no recurso (I). O que ajudaria a garantir isso? (acordo: incluir o item no roteiro do POP-06)". Regras: correção em privado e reconhecimento em público; falar do trabalho, não da pessoa; feedback positivo também segue o SBI; falhas dos agentes viram feedback ao membro digital via `napkin_log.md` e ajuste da skill (`/skill-creator`).

## 🎓 Trilha de capacitação 🔁
**Prática penal**: N1 estrutura do processo penal, leitura de autos, `/prazos-penais`, fatos atômicos, peças C1 → N2 resposta à acusação, técnica de inquirição, liberdade e HC, provas e nulidades → N3 júri (plenário e quesitação), recursos, execução penal → N4 Superiores, colaboração premiada, sustentação oral. O titular, que também é professor, pode transformar casos encerrados e anonimizados em aulas internas mensais.
**Uso de IA**: IA-1 limites (alucinação, CoVe, nunca dado identificável em serviço externo) → IA-2 operação do vault (`raw/`, `wiki/`, `analise/`; INGEST/QUERY/LINT) → IA-3 operar a esteira e os portões → IA-4 revisar saída de IA (amostragem de fontes, checagem de julgados nas bases oficiais) → IA-5 melhoria contínua (napkin, proposta de ajuste de skill).

## 🛡️ Ética e sigilo profissional
1. O sigilo profissional (Estatuto da OAB e Código de Ética e Disciplina) alcança tudo o que a equipe souber em razão do trabalho; colaboradores assinam termo de confidencialidade na entrada.
2. O cliente é o assistido, não quem paga: a família só recebe o que o cliente autorizar; instruções da família contrárias ao interesse do cliente não são seguidas.
3. A comunicação reservada com o cliente preso é prerrogativa (Estatuto da OAB, art. 7º, III); o que se ouve no parlatório não se comenta fora da equipe do caso.
4. Acesso ao vault pela necessidade do caso; dados de clientes nunca vão a serviço externo sem anonimização (`/gestao-escritorio`, `/automacao`).
5. Vedado postar sobre casos, audiências, presídios ou clientes; contato com imprensa só pelo advogado responsável.
6. Ninguém leva objetos, cartas ou recados não autorizados a unidade prisional nem orienta ocultação de prova.

## 🫀 Saúde e carga em plantões criminais 🔁
1. Plantão sempre com titular e backup; rodízio semanal; no máximo dois fins de semana seguidos por pessoa.
2. Equipe de um ou dois advogados: firmar parceria de plantão com colega de confiança (substabelecimento com reservas) para cobrir ausências.
3. Folga compensatória após madrugada de flagrante; celular de plantão separado do pessoal; janela de desconexão fora da escala.
4. Debriefing curto após plenário, sentença dura ou atendimento de violência grave; a carga emocional entra no 1:1.
5. Sinais de alerta (exaustão, cinismo, queda de eficácia; a OMS reconhece o burnout como fenômeno ocupacional na CID-11): semáforo vermelho por duas semanas, plantões em sequência ou trabalho noturno recorrente geram alerta do controller ao titular.

## ✅ Checklist obrigatório
- [ ] Cada demanda ativa tem responsável e revisor humanos registrados?
- [ ] Assinatura e protocolo estão com o advogado responsável, sem exceção?
- [ ] A delegação respeita a matriz senioridade × complexidade?
- [ ] A segunda conferência de prazo é feita por quem não calculou?
- [ ] Alguém está no semáforo vermelho? Há redistribuição proposta?
- [ ] A escala de plantão tem titular, backup e folga compensatória?
- [ ] Daily, reunião semanal e 1:1 do mês ocorreram e foram registrados?
- [ ] Os novos membros receberam termo de sigilo e a trilha IA-1?

## 🔗 Integração com o ARPA-C
* **`arpac-controller`**: lê `Shared/equipe.md` para sugerir responsável e revisor de cada nova demanda, calcula carga e semáforo e aponta violações do RACI no resumo ao orquestrador.
* **Orquestrador `/arpa-criminal`**: nos portões, identifica quem tem papel A naquela etapa e só aceita "Aprovado" dessa pessoa.
* **`arpac-revisor`**: é a camada 1; sua saída em `07-revisao.md` nunca substitui a camada 2.

## 📓 Integração NotebookLM — caderno GESTÃO DE PESSOAS
Mecanismo do SPEC §6, nesta ordem:
1. Com MCP do NotebookLM na sessão (`mcp__notebooklm__*`), consultar o caderno com as perguntas abaixo e citar `[NotebookLM: Gestão de Pessoas]`.
2. Sem MCP, ler `Shared/conhecimento/pessoas.md`.
3. Sem nenhum dos dois, aplicar as diretrizes 🔁 e registrar `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`.

O caderno **substitui** as seções 🔁 quando divergir (pontos de carga, rituais, modelo de feedback, trilha), nunca o 🔒 piso inegociável. Perguntas-padrão (iguais às de `notebooklm/cadernos.md`):
- **PES-01** Quais papéis e responsabilidades as fontes recomendam definir em um escritório de advocacia de pequeno porte, e como formalizá-los (descrição de cargo, matriz RACI)?
- **PES-02** Como as fontes orientam a delegação de tarefas conforme a maturidade e a senioridade do profissional (liderança situacional ou modelo equivalente)?
- **PES-03** Que modelo de feedback as fontes recomendam (SBI, feedforward, outro) e com que frequência deve ser dado?
- **PES-04** Como estruturar reuniões 1:1 e rituais de equipe (diária, semanal) segundo as fontes: pauta, duração e registros?
- **PES-05** Como as fontes sugerem medir e equilibrar a carga de trabalho da equipe e prevenir o esgotamento (burnout)?
- **PES-06** Quais práticas de recrutamento, integração (onboarding) e retenção de estagiários e advogados as fontes destacam?
- **PES-07** Como montar um plano de desenvolvimento individual (PDI) e uma trilha de capacitação, segundo as fontes?
- **PES-08** Como as fontes tratam a avaliação de desempenho (metas, OKR, competências) em equipes jurídicas?
- **PES-09** O que as fontes dizem sobre integrar ferramentas de IA ao trabalho da equipe (papéis, revisão humana, capacitação, resistência à mudança)?
- **PES-10** Que cuidados de cultura, ética e confidencialidade as fontes recomendam reforçar com a equipe?

## ⚙️ Interface de Expansão
> [!IMPORTANT]
> Placeholders para scripts futuros: `carga.py` (soma pontos por pessoa a partir do Quadro do painel e atualiza o semáforo em `Shared/equipe.md`), `escala_plantao.py` (gera o rodízio e as folgas compensatórias e envia lembrete ao WhatsApp do plantonista) e um formulário de 1:1 em Markdown com histórico por pessoa.
