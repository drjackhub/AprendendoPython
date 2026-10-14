# 📓 Cadernos do NotebookLM — configuração do ARPA-C

Arquivo de configuração dos quatro cadernos do NotebookLM do Douglas que alimentam as skills de gestão e automação (SPEC §6). As perguntas-padrão abaixo são **as mesmas** que constam de cada skill; ao alterá-las aqui, alterar também na skill correspondente.

## 1. Tabela de cadernos
| Caderno | Nome exato no NotebookLM | URL | Agentes / skills que consomem | Arquivo de export | Rótulo de citação |
|---|---|---|---|---|---|
| **AUTOMAÇÃO COM IA** | [PREENCHER] | [PREENCHER] | `/automacao`, orquestrador `/arpa-criminal`, `arpac-controller` | `Shared/conhecimento/automacao.md` | `[NotebookLM: Automação com IA]` |
| **GESTÃO DE PESSOAS** | [PREENCHER] | [PREENCHER] | `/gestao-pessoas`, `arpac-controller` (distribuição, revisão, feedback) | `Shared/conhecimento/pessoas.md` | `[NotebookLM: Gestão de Pessoas]` |
| **GESTÃO DE PROCESSOS** | [PREENCHER] | [PREENCHER] | `/gestao-processos`, `arpac-triagem`, `arpac-controller` (esteira, POPs, SLAs) | `Shared/conhecimento/processos.md` | `[NotebookLM: Gestão de Processos]` |
| **GESTÃO DE ESCRITÓRIOS** | [PREENCHER] | [PREENCHER] | `/gestao-escritorio`, `arpac-triagem` (intake, honorários), `arpac-controller` (KPIs) | `Shared/conhecimento/escritorio.md` | `[NotebookLM: Gestão de Escritórios]` |

## 2. Mecanismo de consulta (SPEC §6)
1. **MCP disponível** na sessão (`mcp__notebooklm__*` ou equivalente): consultar o caderno com as perguntas-padrão e citar o rótulo da tabela.
2. **Sem MCP**: ler o arquivo de export em `Shared/conhecimento/`.
3. **Sem nenhum dos dois**: aplicar as diretrizes-base da skill (marcadas com 🔁) e registrar `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]` no `gestao/log.md` do caso ou, no Modo Gestão, no `napkin_log.md`.

**Precedência**: o conteúdo do caderno substitui as diretrizes-base 🔁 das skills, mas nunca o piso inegociável 🔒 (a IA não assina nem protocola; três portões humanos; dupla conferência humana de prazo; prioridade do réu preso; sigilo e anonimização; fonte e confiança em todo registro; nunca inventar jurisprudência). Se o caderno contrariar o piso, registrar o conflito no `napkin_log.md` e seguir o piso.

## 3. Como conectar o MCP do NotebookLM no computador local
O servidor MCP do NotebookLM **já foi adicionado anteriormente** ao Claude Code; falta autenticá-lo no computador local com a conta Google em que estão os cadernos.
1. Abrir o terminal na raiz do vault e conferir o registro com `claude mcp list`: o servidor do NotebookLM deve aparecer na lista.
2. Iniciar `claude` e digitar `/mcp` para ver o status. Se pedir autenticação, seguir o fluxo do próprio servidor, que normalmente oferece uma ferramenta de configuração/login que abre o Chrome para entrar na conta Google (com verificação em duas etapas) `[VERIFICAR nome da ferramenta no servidor instalado]`.
3. Testar com: "Liste meus cadernos do NotebookLM". Copiar o **nome exato** e a **URL** de cada caderno para a tabela da seção 1.
4. Se o servidor mantiver uma biblioteca local de cadernos, cadastrar as quatro URLs com nomes e descrições iguais aos da tabela.
5. Se o servidor não aparecer em `claude mcp list` (máquina nova, por exemplo), registrá-lo de novo com `claude mcp add` seguindo as instruções do pacote utilizado `[VERIFICAR comando do pacote instalado]`.
6. Segurança: a sessão Google fica no perfil local do servidor, fora do vault, fora do Git e de qualquer sincronização; nunca gravar senha em arquivo. Em sessões na nuvem (claude.ai/code), o MCP local não está disponível: usar o nível 2.

## 4. Export manual (quando o MCP não estiver disponível)
1. Abrir o caderno no NotebookLM e fazer as perguntas-padrão da seção 5, **uma por vez e com o texto exato**.
2. Copiar cada resposta sem editar o mérito, mantendo as marcas de citação das fontes (`[1]`, `[2]`...).
3. Colar no arquivo de export do caderno, no esqueleto de `Shared/conhecimento/README.md` (reproduzido abaixo), usando como identificador da seção o código da pergunta (AUT-01, PES-03, PROC-01, ESC-02...). Comentários do escritório vão em blocos `> Nota:` separados da resposta. Nenhum dado de caso entra nesses arquivos.
4. As respostas do caderno AUTOMAÇÃO COM IA obtidas durante a construção do ARPA-C (AUT-01 a AUT-04) formam o export inicial de `Shared/conhecimento/automacao.md`; a AUT-04 veio truncada e deve ser consultada de novo.
```markdown
---
caderno: "GESTÃO DE PROCESSOS"
nome_no_notebooklm: ""
exportado_em: AAAA-MM-DD
exportado_por: ""            # iniciais, ou "arpac-controller (MCP)"
fontes_do_caderno: 0
---

# Export — GESTÃO DE PROCESSOS

## PROC-01 <pergunta-padrão, copiada literalmente>

<resposta do NotebookLM, com as citações [n] preservadas>

Fontes citadas: [n] <título da fonte>; [n] <título da fonte>

> Nota: <comentário do escritório, se houver>
```
Citação nas skills e agentes: `[NotebookLM: <caderno>]` quando vier do MCP; `[NotebookLM: <caderno> — export de AAAA-MM-DD, <código>]` quando vier do export.

## 5. Perguntas-padrão consolidadas
### AUTOMAÇÃO COM IA → `/automacao`
- **AUT-01** Como integrar o Obsidian ao Claude Code?
- **AUT-02** Quais as orientações para organizar conhecimento jurídico no Obsidian (pastas, tipos de nota, nomes, YAML, tags, links, templates) e como a IA deve consumir essas notas?
- **AUT-03** Como fazer o Claude Code baixar processos inteiros no PJe, passar o OCR do Docling e extrair as informações para elaborar as peças cabíveis?
- **AUT-04** Como funcionam a skill pje-download e o browser-use CLI, e como usar o Claude Code via CLI?
- **AUT-05** As fontes trazem orientações específicas para autos criminais: inquérito policial, mídias de audiência em vídeo, processos em segredo de justiça e SEEU?
- **AUT-06** Como as fontes recomendam estruturar o SCHEMA.md e a operação LINT (frequência, o que verificar, como registrar)?
- **AUT-07** Como gerar .docx formatado com python-docx a partir de minutas em Markdown (estilos, notas de rodapé, citações recuadas)?
- **AUT-08** Quais cuidados de segurança e sigilo as fontes apontam para a automação (cookies, credenciais, dados de clientes, servidores MCP)?
- **AUT-09** Como as fontes descrevem o ciclo de auto-melhoria (claude.md, memória, napkin) e com que frequência atualizá-lo?
- **AUT-10** Como dividir o trabalho entre agentes e skills (analisadora × minutadora) e medir a economia de tokens obtida?

### GESTÃO DE PESSOAS → `/gestao-pessoas`
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

### GESTÃO DE PROCESSOS → `/gestao-processos`
- **PROC-01** Quais etapas as fontes recomendam para mapear o macroprocesso de um escritório de advocacia, do primeiro contato ao arquivamento, e que notação (BPMN, fluxograma) sugerem?
- **PROC-02** Como as fontes orientam a redação de um Procedimento Operacional Padrão (POP) jurídico: campos obrigatórios, nível de detalhe, revisão e versionamento?
- **PROC-03** Que método de controle de prazos as fontes recomendam (prazo fatal × prazo interno, dupla conferência, responsáveis) e quais falhas mais comuns apontam?
- **PROC-04** Como aplicar Kanban a um escritório de advocacia segundo as fontes: colunas, limites de WIP, prioridades/classes de serviço e cadência de revisão do quadro?
- **PROC-05** Quais SLAs internos ou tempos-padrão de resposta as fontes sugerem para atendimento, análise de caso e produção de peças, e como medi-los?
- **PROC-06** O que é controladoria jurídica (legal ops) segundo as fontes, quais atividades concentra e como se organiza em escritório de pequeno porte?
- **PROC-07** Quais indicadores de processo (lead time, retrabalho, gargalos, cumprimento de prazos) as fontes recomendam acompanhar e com que periodicidade?
- **PROC-08** Como as fontes recomendam conduzir a leitura diária de intimações/publicações e a conferência pós-protocolo?
- **PROC-09** Como aplicar o ciclo PDCA ou outra metodologia de melhoria contínua aos processos internos do escritório, segundo as fontes?
- **PROC-10** Que ferramentas ou rotinas de automação de processos (agenda, alertas, painéis) as fontes indicam para escritórios pequenos?

### GESTÃO DE ESCRITÓRIOS → `/gestao-escritorio`
- **ESC-01** Quais indicadores de desempenho (KPIs) as fontes recomendam para um escritório de advocacia de pequeno porte, e como calculá-los?
- **ESC-02** Como as fontes orientam o atendimento inicial (primeira consulta) e o funil de captação até a contratação?
- **ESC-03** Que métodos de precificação de honorários as fontes apresentam (por fase, por hora, fixo, êxito) e que cuidados éticos apontam?
- **ESC-04** Quais cláusulas essenciais as fontes recomendam no contrato de honorários e como tratar a inadimplência?
- **ESC-05** Como as fontes recomendam organizar o financeiro do escritório (fluxo de caixa, centro de custo, reserva, cálculo do custo-hora)?
- **ESC-06** Que práticas de relacionamento e comunicação com o cliente (relatórios, periodicidade, canais) as fontes recomendam?
- **ESC-07** O que as fontes orientam sobre marketing jurídico e publicidade dentro dos limites éticos da OAB?
- **ESC-08** Como as fontes tratam a adequação do escritório à LGPD e à segurança da informação?
- **ESC-09** Que estrutura administrativa mínima (sistemas, rotinas, terceirizações) as fontes sugerem para um escritório pequeno com sede no interior?
- **ESC-10** Como as fontes recomendam planejar o crescimento do escritório (metas anuais, OKR, nichos de atuação)?

## 6. Rotina de atualização
| Quando | Quem | O quê | Saída |
|---|---|---|---|
| **Mensal** (1ª segunda-feira útil, junto do painel semanal) | `arpac-controller` no Modo Gestão, por comando do Douglas | re-consultar os quatro cadernos (nível 1) ou, sem MCP, lembrar o Douglas de fazer o export manual; o LINT sinaliza export com `exportado_em` acima de 180 dias (SCHEMA §6.3) | nova versão proposta de cada export |
| **Quando o Douglas acrescenta fontes a um caderno** | Douglas aciona; controller executa | refazer as perguntas do caderno afetado | nova versão do export |
| **Após incidente de gestão** (prazo perdido, retrabalho alto, sobrecarga) | controller | perguntar ao caderno pertinente sobre a falha e propor ajuste do POP ou da diretriz-base | entrada no `napkin_log.md` |
| **Semestral** | Douglas + controller | revisar as perguntas-padrão (incluir, excluir, reescrever) e as diretrizes 🔁 das skills | este arquivo e as skills atualizados |

Passos de cada atualização:
1. Antes de substituir, guardar a versão anterior em `Shared/conhecimento/_historico/<arquivo>-AAAA-MM-DD.md`.
2. Comparar a nova resposta com a anterior e com as diretrizes 🔁 da skill; registrar as mudanças relevantes no `napkin_log.md` (Data · Tarefa · Problema · Solução · Diretriz de futuro) e consolidar no `memory.md`.
3. Se uma diretriz-base ficar superada, propor o ajuste da skill (via `/skill-creator`); a alteração só é gravada após "Aprovado" do Douglas.
4. Se a resposta do caderno conflitar com o piso inegociável ou com a lei, registrar o conflito e manter o piso.
5. Atualizar `exportado_em`, `exportado_por` e `fontes_do_caderno` no frontmatter do export.

Em `Shared/` a IA só propõe (SCHEMA §2): o `arpac-controller` apresenta a nova versão de cada export e só a grava em `Shared/conhecimento/` depois do "Aprovado" do Douglas; sem esse "Aprovado", quem grava é uma pessoa da equipe.
