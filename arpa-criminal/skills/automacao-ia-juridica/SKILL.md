---
name: automacao-ia-juridica
description: Habilidade de automação com IA para a advocacia criminal — pipeline em 4 etapas (download dos autos no PJe/SEEU/eproc → OCR com Docling para Markdown → mapa dos autos e wiki do caso → esteira ARPA-C → .docx via python-docx ou /docx), vault no Obsidian como cérebro digital, SCHEMA.md (INGEST/QUERY/LINT), índice mestre de teses e modelos por eixo de resultado, frontmatter YAML penal, economia de tokens, integração com o NotebookLM, auto-melhoria (napkin/memory.md) e segurança de dados e credenciais. Ative com /automacao ou quando o usuário pedir para baixar autos, converter PDF em Markdown, montar o mapa dos autos, organizar o Obsidian, criar índice de modelos, gerar .docx, rodar LINT no vault, integrar NotebookLM ou configurar o Claude Code via CLI.
---
# 🤖 Habilidade: Automação com IA na Advocacia Criminal (/automacao)

Manual técnico do "cérebro digital" do escritório: o Obsidian guarda a memória estruturada em Markdown e o Claude Code é o motor agêntico que consulta, cria e atualiza essas notas `[NotebookLM: Automação com IA]`. Esta skill adapta o pipeline do caderno ao processo penal e o liga à esteira ARPA-C.

> **Legenda** — `[NotebookLM: Automação com IA]` = conteúdo do caderno do Douglas. `[ADAPTAÇÃO ARPA-C]` = ajuste ao crime que não consta da fonte e deve ser validado na prática. 🔒 = piso inegociável.

## ⚡ Gatilho e Ativação
* **Comando**: `/automacao` — acionado pelo orquestrador `/arpa-criminal` (download antes do M1 e .docx no M5), pelo `arpac-auditor-autos` (Docling e mapa no M1) ou pelo `arpac-controller` no Modo Gestão (LINT e napkin).
* **Variações**: `ingest <caso>` (etapas 1 a 3) · `docx <minuta>` · `lint` · `indice` (regenera o índice mestre) · `notebooklm <caderno>` · `napkin`.
* **Modo de Operação**: o assistente atua como **Engenheiro de Automação Jurídica**: monta e opera o pipeline, mede custo e qualidade; não decide mérito e nunca protocola.

## 🔒 Piso inegociável
1. Nenhuma automação assina ou protocola; roteiros de navegador ficam restritos a **consulta e download**.
2. `raw/` é imutável: só se acrescentam arquivos novos e datados.
3. Toda saída passa pelos portões humanos do SPEC §4.
4. Cookies, certificados e senhas ficam fora do vault e de qualquer sincronização.
5. Dado identificável de cliente não vai a serviço externo sem anonimização (`/gestao-escritorio`).

## 🧠 Princípios
* **Markdown primeiro**: `.md` é leve, legível pela IA e pesquisável; PDF e DOCX consomem muito mais tokens `[NotebookLM: Automação com IA]`.
* **"Stop re-deriving, start compiling"**: em vez de reler o PDF a cada pergunta, compilar as descobertas uma única vez na wiki e responder a partir do compilado, com redução de custo de até 77% `[NotebookLM: Automação com IA]`.
* **Analisadora × minutadora**: uma skill planeja e escolhe o modelo e outra redige `[NotebookLM: Automação com IA]`. No ARPA-C: M0–M4 (até `06-blueprint.md`) é a analisadora; o `arpac-redator` (M5) é a minutadora.

## 🗂️ Vault no Obsidian (alinhado ao SPEC §5)
**Conexão** `[NotebookLM: Automação com IA]`: (A) abrir o terminal na raiz do vault e rodar `claude`, para que tudo o que for criado apareça no Obsidian, ou apontar caminhos absolutos nas instruções; (B) instalar no Obsidian um plugin de servidor MCP (ex.: *MCP Tools*, inclusive via *BRAT*) e registrá-lo com `claude mcp add`, expondo ferramentas para listar, ler, criar e atualizar notas.
```
[ESCRITORIO-CRIMINAL]/            # vault do Obsidian = diretório do Claude Code
├── CLAUDE.md                     # "cérebro dentro do cérebro": estilo, convenções, regras ARPA-C
├── SCHEMA.md                     # governança: INGEST / QUERY / LINT
├── memory.md · napkin_log.md     # auto-melhoria
├── caso-modelo/                  # esqueleto copiado para cada caso novo
├── Shared/
│   ├── escritorio.md · estilo.md · painel-casos.md · equipe.md · calendario.md
│   ├── conhecimento/             # automacao.md · pessoas.md · processos.md · escritorio.md
│   └── modelos/                  # [ADAPTAÇÃO ARPA-C] INDICE-MESTRE.md + A-liberdade/ … H-acusacao/
└── casos/<CNJ-ou-apelido>/
    ├── raw/                      # PDFs + .md convertido de mesmo nome-base (SCHEMA §3) — IMUTÁVEL
    ├── wiki/                     # index.md (mapa dos autos) · ficha.md · cronologia.md · fatos-atomicos.md · prazos.md
    ├── analise/                  # 01-triagem … 07-revisao
    ├── minutas/                  # <peca>-vN.md / .docx
    └── gestao/                   # status.md · log.md
```
`Shared/modelos/` é extensão compatível com o SPEC (não altera caminhos existentes); como todo `Shared/`, a IA propõe as notas e o índice e só grava após "Aprovado" do Douglas (SCHEMA §2). As notas `partes.md`, `prescricao.md` e `teses.md` citadas na fonte correspondem, no ARPA-C, a `wiki/ficha.md`, `wiki/prazos.md` + `analise/03` e `analise/04`.

## 🌉 Pipeline em 4 etapas
```mermaid
graph LR
    classDef auto fill:#e8f0fe,stroke:#1967d2,stroke-width:1px;
    classDef humano fill:#fef7e0,stroke:#b06000,stroke-width:2px;
    E1["1 Download<br/>PJe · SEEU · eproc"]:::auto --> E2["2 OCR Docling<br/>PDF → .md em raw/"]:::auto
    E2 --> E3["3 Mapa dos autos<br/>wiki/index.md + wiki/"]:::auto
    E3 --> E4["4 Esteira ARPA-C<br/>M0 a M5 + portões"]:::auto
    E4 --> D["minutas/#lt;peca#gt;-vN.docx"]:::auto
    D --> H(["Douglas revisa, assina e protocola"]):::humano
```

### Etapa 1 — Download dos autos
* **PJe via skill `pje-download` + browser-use CLI** `[NotebookLM: Automação com IA]`: na primeira execução abre-se um Chrome visível, o advogado faz login manual (CPF e senha ou certificado digital/2FA) e tecla ENTER; a sessão é gravada em `~/.browser-use/pje_cookies.json`. Nas seguintes, a skill roda em segundo plano (headless), digita o CNJ, pede o PDF consolidado ou o `.zip` e salva no projeto. Sessão expirada: `rm ~/.browser-use/pje_cookies.json` e novo login. No Windows, preferir WSL2.
* **Via MCP/APIs de interoperabilidade** (TecJustiça MCP, MNI/PDPJ), com ferramentas como `pje-download`, `pdpj_read_documentos_batch` ou `baixar_documento`, sem interface gráfica `[NotebookLM: Automação com IA]`.
* **SEEU e eproc**: mesmo padrão de sessão e download `[ADAPTAÇÃO ARPA-C — validar telas e termos de uso de cada sistema]`.
* **Particularidades penais** `[ADAPTAÇÃO ARPA-C]`: o inquérito pode estar em outro sistema ou em papel (digitalizar e seguir para a etapa 2); acesso negado aos elementos já documentados → requerimento com base na Súmula Vinculante 14 do STF; mídias audiovisuais (depoimentos, interrogatório, câmeras corporais) não passam por OCR: entram no mapa como `midia`, a transcrição é feita à parte e toda citação literal é conferida no vídeo por pessoa da equipe; processos em segredo de justiça só são baixados pelo advogado habilitado e guardados em disco criptografado.
* **Destino**: `casos/<caso>/raw/autos-integrais_AAAA-MM-DD.pdf`; peças avulsas como `raw/AAAA-MM-DD_<tipo>_<id-ou-fl>.pdf` (SCHEMA §3). Um arquivo novo a cada download; o depósito em `raw/` é ato humano (ou script rodado a pedido do Douglas).

### Etapa 2 — OCR e conversão com Docling
O Docling (open-source, IBM Research) converte PDFs digitais ou escaneados em Markdown estruturado, preservando ordem de leitura, layout e tabelas; a regra é **extrair uma única vez** `[NotebookLM: Automação com IA]`. Alternativas citadas: LiteParse e TecJustiça Parse. No ARPA-C, quem converte é o `arpac-auditor-autos` no INGEST, e o `.md` de mesmo nome-base é a única escrita permitida em `raw/` (SCHEMA §2); pela linha de comando: `docling <arquivo.pdf> --to md --output raw/`.
```python
# ocr_docling.py — uso: python ocr_docling.py casos/<caso>/raw/autos-integrais_AAAA-MM-DD.pdf
import sys, pathlib
from docling.document_converter import DocumentConverter   # [NotebookLM: Automação com IA]
pdf = pathlib.Path(sys.argv[1])
md = pdf.with_suffix(".md")
if md.exists():                                            # [ADAPTAÇÃO ARPA-C] raw/ é imutável
    sys.exit(f"{md} já existe: raw/ não se sobrescreve")
md.write_text(DocumentConverter().convert(str(pdf)).document.export_to_markdown(), encoding="utf-8")
```
**Controle de qualidade** `[ADAPTAÇÃO ARPA-C]`: comparar o total de páginas com a numeração de folhas; manuscritos (termos do APF, assinaturas) e carimbos → confiança BAIXA e leitura humana; conferir tabelas de laudos (toxicológico, balístico, necroscópico) e de certidões de antecedentes.

### Etapa 3 — Mapa dos autos e wiki do caso
O mapeador (`tj-mapa`) lê o Markdown e cria um índice `.json` e `.md` com tipo, folha, ID e resumo de cada peça, permitindo ler só os intervalos de linhas relevantes e reduzindo o custo em até 77% `[NotebookLM: Automação com IA]`.
* **No ARPA-C**: o mapa é o próprio `wiki/index.md` ("Mapa dos Autos"), escrito pelo `arpac-auditor-autos`: §1 arquivos em `raw/`, §2 Mapa das Peças (`| Peça | id | fl. | Data | Resumo | Localização (raw/arquivo.md:linhas) | Relevância |`), §3 peças-chave, §4 lacunas, §5 registro de INGEST. Nos PDFs do PJe, o rodapé "Num. <id> - Pág. <n>" indica o id.
* **Vocabulário da coluna "Peça"** `[ADAPTAÇÃO ARPA-C]`: `apf`, `nota_culpa`, `bo`, `termo_depoimento`, `interrogatorio_policial`, `auto_apreensao`, `laudo`, `relatorio_ip`, `denuncia`, `queixa`, `decisao_recebimento`, `citacao`, `resposta_acusacao`, `decisao_cautelar`, `termo_audiencia`, `midia`, `alegacoes_finais`, `sentenca`, `pronuncia`, `ata_juri`, `acordao`, `certidao_antecedentes`, `certidao_transito`, `guia_execucao`, `calculo_pena`.
* **Confiança** `[NotebookLM: Automação com IA]` (= SPEC §3): ALTA = 2+ fontes ou documento oficial (ex.: "citação em 10/05/2025 (fl. 45, id 123456)"); MÉDIA = 1 fonte; BAIXA/INFERIDO = exige validação humana.

### Etapa 4 — Esteira ARPA-C e geração do .docx
* **Analisadora** (`planejar-analise` na fonte): lê o mapa e a wiki, identifica o estado processual, cruza com o índice de modelos e devolve um plano com o modelo indicado `[NotebookLM: Automação com IA]` → no ARPA-C, `analise/06-blueprint.md` aponta o eixo e a nota-modelo.
* **Minutadora** (`tecjustica-docx`/`executar-analise` na fonte): abre o modelo indicado, preenche com os fatos reais e redige `[NotebookLM: Automação com IA]` → `arpac-redator` grava `minutas/<peca>-vN.md`.
* **.docx determinístico** via python-docx ou LibreOffice, com citações indicando folha e ID das peças `[NotebookLM: Automação com IA]`. No ARPA-C, aplicar `Shared/estilo.md` (SPEC §7) e preferir a skill `/docx` quando disponível; notas de rodapé no python-docx podem exigir manipulação do XML `[VERIFICAR versão da biblioteca]`.
```python
from docx import Document
from docx.shared import Pt
from docx.enum.text import WD_ALIGN_PARAGRAPH
doc = Document(); normal = doc.styles["Normal"]
normal.font.name, normal.font.size = "Century Gothic", Pt(12)
pf = normal.paragraph_format
pf.line_spacing, pf.space_after, pf.alignment = 1.5, Pt(0), WD_ALIGN_PARAGRAPH.JUSTIFY
```

## 📜 SCHEMA.md — INGEST / QUERY / LINT
| Operação | Regra da fonte `[NotebookLM: Automação com IA]` | Acréscimo ARPA-C |
|---|---|---|
| **INGEST** | novo documento em `raw/` → ler, extrair fatos novos, atualizar `index.md` e páginas da `wiki/`, sinalizar contradições | converter o PDF, atualizar `wiki/index.md` §1, §2 e §5, novos F# com `[CONTRADIÇÃO: F# × F#]` quando houver; nova intimação → reacionar `arpac-prazos-prescricao` |
| **QUERY** | ler **primeiro** o `index.md`; ir a `raw/` só se o compilado não responder | responder com fl./id e confiança; em `raw/`, ler só as linhas indicadas no mapa |
| **LINT** | varredura periódica de contradições entre notas, decisões superadas e páginas órfãs | checklist do SCHEMA §6.3 (frontmatter, rastreabilidade, pendências > 7 dias, precedentes não verificados, coerência tese × pedido, prazos, Kanban, órfãos, export do NotebookLM > 180 dias) + notas de `Shared/modelos/` com `data_atualizacao` acima de 12 meses ou afetadas por alteração legislativa (`[VERIFICAR REDAÇÃO VIGENTE]`) e WikiLinks quebrados |

LINT semanal no Modo Gestão e sempre antes do Portão 2, rodado pelo `arpac-controller`: achados do caso vão para `gestao/status.md` §4, os do vault para o retorno ao orquestrador, e os incidentes relevantes para o `napkin_log.md`.

## 🗃️ Índice mestre de teses e modelos por eixo de resultado
Navegação em 3 passos `[NotebookLM: Automação com IA]`: `Shared/modelos/INDICE-MESTRE.md` → `_indice.md` do eixo → nota-modelo. Nome determinístico: `eixo<letra>_<peca>_<tese>.md` (ex.: `eixoA_hc_excesso-prazo.md`). Tipos de nota da fonte: pílulas de conhecimento, MOCs, dispositivos/súmulas/precedentes, modelos por eixo, fichas do processo e notas de **"quando NÃO usar"**, que dizem à IA em que hipóteses o modelo não se aplica.

| Eixo | Resultado | Modelos típicos | Skills | Quando NÃO usar (exemplos) |
|---|---|---|---|---|
| **A** Liberdade | soltura ou cautelar menos gravosa | relaxamento, liberdade provisória, revogação da preventiva, HC, domiciliar (CPP, art. 318), revisão nonagesimal (art. 316, p.ú.) | `/liberdade` | excesso de prazo provocado pela defesa (STJ, Súmula 64) |
| **B** Rejeição / absolvição sumária | encerrar a ação no início | resposta à acusação (art. 396-A), rejeição (art. 395), absolvição sumária (art. 397), trancamento | `/decomposicao-penal`, `/provas-nulidades` | tese que depende de instrução: a absolvição sumária exige hipótese manifesta |
| **C** Mérito / absolvição | absolvição, desclassificação, impronúncia | memoriais (art. 403, §3º), alegações na 1ª fase do júri, plenário | `/decomposicao-penal`, skill temática do tipo (ex.: `/crimes-contra-patrimonio`, `/lei-de-drogas`), `/crimes-contra-vida` no júri | tese subsidiária que implique confissão sem anuência do cliente |
| **D** Dosimetria / prescrição | pena mínima, regime, substituição, extinção | teses subsidiárias de pena, apelação na dosimetria, pedido de prescrição | `/dosimetria`, `/prescricao` | atenuante para pena abaixo do mínimo (STJ, Súmula 231), salvo decisão expressa do Douglas de sustentar a superação |
| **E** Recursos | reforma ou anulação | apelação, RESE, embargos, agravo em execução, REsp/RE | `/recursos-penais`, `/superiores`, `/recurso-especial`, `/recurso-extraordinario` | REsp que dependa de reexame de prova (STJ, Súmula 7) |
| **F** Execução | benefícios e correção do cálculo | progressão, livramento, remição, indulto, unificação, defesa em PAD | `/execucao-penal` | progressão sem conferir data-base e fração no SEEU |
| **G** Justiça negocial `[ADAPTAÇÃO ARPA-C]` | acordo | ANPP, transação, suspensão condicional, colaboração | `/negocial` | ANPP com violência ou grave ameaça ou em violência doméstica (CPP, art. 28-A, caput e §2º, IV) |
| **H** Acusação / vítima `[ADAPTAÇÃO ARPA-C]` | proteção e responsabilização | queixa-crime, habilitação como assistente, medidas protetivas | `/maria-da-penha` | queixa sem poderes especiais e menção do fato (CPP, art. 44) ou após a decadência (art. 38) |

Links: a ficha do caso cita a nota aplicada (`[[STF Súmula Vinculante 14]]`) e as relações tipadas `fundamenta_em`, `superada_por` e `contradiz` alimentam o Graph View `[NotebookLM: Automação com IA]`. Nota de precedente só com identificação verificada; senão `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` (SPEC §9).

## 🏷️ Frontmatter YAML penal
Vale para as notas de conhecimento (`Shared/modelos/`: modelos, pílulas, dispositivos, súmulas e precedentes, MOCs). Os arquivos de caso seguem o frontmatter comum do SCHEMA §4.
```yaml
---
tipo: modelo_peca          # modelo_peca | pilula | dispositivo | sumula_precedente | moc | quando_nao_usar
tipo_penal: trafico_drogas # ex.: homicidio_qualificado, roubo_majorado, estupro_vulneravel, violencia_domestica
fase: resposta_acusacao    # investigacao | custodia | recebimento | instrucao | memoriais | pronuncia | plenario | sentenca | recurso | superiores | execucao
eixo: B                    # A a H
tribunal: TJPE             # TJPE | TRF5 | STJ | STF | qualquer
dispositivos: ["CPP art. 396-A", "CPP art. 395"]
skill: /provas-nulidades
quando_nao_usar: "[[eixoB_quando-nao-usar]]"
confianca: alta            # alta | media | baixa
data_atualizacao: 2026-10-14
fonte: "acervo do escritório"
tags: [eixoB, resposta_acusacao, trafico, tjpe]
---
```
As tags reduzem o universo da busca antes da leitura `[NotebookLM: Automação com IA]`. No YAML do Obsidian, escrever as tags sem `#`; reaproveitar as etiquetas do Kanban (`reu-preso`, `juri`, `execucao` etc.).

## 💸 Economia de tokens
1. Ler índice antes de nota e nota antes de `raw/` (QUERY); em `raw/`, só intervalos do mapa.
2. Converter tudo para `.md` uma vez; nunca anexar o PDF bruto ao contexto.
3. Cada subagente recebe só os arquivos de entrada da sua linha no SPEC §3.
4. Skills temáticas por *progressive disclosure*: só as que a árvore de teses exigir.
5. Respostas do NotebookLM importadas uma vez para `Shared/conhecimento/` e reutilizadas.
6. Tarefas mecânicas em lote (LINT, painel) com `claude -p`, fora da sessão de análise.

## 📓 Integração NotebookLM — caderno AUTOMAÇÃO COM IA
Mecanismo do SPEC §6: (1) com MCP (`mcp__notebooklm__*`), consultar o caderno e citar `[NotebookLM: Automação com IA]`; (2) sem MCP, ler `Shared/conhecimento/automacao.md`; (3) sem ambos, aplicar esta skill e registrar `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`.
* **Fluxo multiferramenta** `[NotebookLM: Automação com IA]`: enviar fontes pesadas (PDFs, relatórios, vídeos) ao NotebookLM e importar as respostas, com citação das fontes, como notas no vault.
* **Regras ARPA-C**: enviar doutrina, jurisprudência, cursos e material próprio; autos só anonimizados e nunca material crítico; o import segue o esqueleto de `Shared/conhecimento/README.md` (frontmatter `caderno`, `nome_no_notebooklm`, `exportado_em`, `exportado_por`) e nunca contém dados de casos.
* **Perguntas-padrão** (iguais às de `notebooklm/cadernos.md`; AUT-01 a AUT-04 já respondidas na construção do ARPA-C, a AUT-04 com resposta truncada):
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

## 🔁 Auto-melhoria (napkin → memory.md → CLAUDE.md)
1. Todo incidente de automação vai para `napkin_log.md` no padrão do `/napkin`: **Data** · **Tarefa** · **Problema encontrado** · **Solução aplicada** · **Diretriz de futuro**. Ex.: "Docling perdeu a tabela da certidão de antecedentes → reprocessar a página isolada → conferir tabelas de certidões no controle de qualidade".
2. Em seguida, consolidar o aprendizado em `memory.md`.
3. Periodicamente, pedir "Atualize o claude.md com base nas nossas interações recentes", criando o ciclo de auto-melhoria `[NotebookLM: Automação com IA]`. No ARPA-C, a alteração do `CLAUDE.md` só é gravada após "Aprovado" do Douglas.

## 🔐 Segurança
1. Cookies do PJe/SEEU equivalem a login: ficam em `~/.browser-use/`, fora do vault, fora do Git (`.gitignore`) e fora de Obsidian Sync ou nuvem; apagar ao trocar de máquina.
2. Certificado digital e token A3: PIN digitado só por pessoa; nenhum script assina.
3. Nunca protocolar automaticamente: nenhum roteiro acessa telas de peticionamento; protocolo é do Portão 3.
4. Disco criptografado, backup criptografado, MFA nas contas; servidores MCP só de origem confiável e com o mínimo de permissões.
5. Serviços externos só com material anonimizado (`/gestao-escritorio`); segredo de justiça nunca sai do computador local.
6. Revisão humana obrigatória de toda saída; o log registra quem rodou o quê e quando.

## 🖥️ Claude Code via CLI (referência rápida) `[NotebookLM: Automação com IA]`
Instalação: `curl -fsSL https://claude.ai/install.sh | bash` (macOS, Linux, WSL2) · `irm https://claude.ai/install.ps1 | iex` (PowerShell) · ou `npm install -g @anthropic-ai/claude-code` (Node.js 18+). Uso: `claude` (modo interativo; Shift+Tab alterna modos de permissão) · `claude "instrução"` (abre já executando) · `claude -p "instrução"` (responde e encerra; bom para lotes) · `claude -c` (continua a última conversa do diretório) · `claude -r` (retoma uma sessão anterior).

## ✅ Checklist obrigatório
- [ ] Os autos foram baixados para `raw/` como arquivo novo e datado, sem sobrescrever nada?
- [ ] O Docling rodou uma única vez e o controle de qualidade marcou manuscritos e tabelas?
- [ ] O `wiki/index.md` §2 localiza cada peça por arquivo e linhas, com id e fl.?
- [ ] As mídias foram listadas e as citações literais conferidas no vídeo?
- [ ] A minuta indica o eixo e a nota-modelo, e a nota "quando NÃO usar" foi lida?
- [ ] O .docx segue `Shared/estilo.md` e as citações trazem fl./id?
- [ ] Nada foi enviado a serviço externo sem anonimização?
- [ ] Cookies e credenciais continuam fora do vault e do Git?
- [ ] Os incidentes do dia foram registrados no `napkin_log.md`?

## 🔗 Integração com o ARPA-C
* **Orquestrador `/arpa-criminal`**: sugere a etapa 1 (download, depositado por humano) quando `raw/` estiver vazio ou desatualizado e a geração do .docx depois do M5.
* **`arpac-auditor-autos`**: executa as etapas 2 e 3 no M1 (Docling e mapa em `wiki/index.md`) e aplica INGEST na `wiki/`.
* **`arpac-redator`**: usa o índice mestre e gera o .docx.
* **`arpac-controller`**: roda o LINT, registra incidentes no `napkin_log.md` e consolida o `memory.md`.

## ⚙️ Interface de Expansão
> [!IMPORTANT]
> Placeholders para scripts futuros: `pipeline.py <CNJ>` (encadeia download, Docling e mapa e chama `/arpa-criminal`), `mapa_autos_penal.py` (versão penal do `tj-mapa`, que pré-preenche o `wiki/index.md` §2 com o vocabulário de peças acima), `md2docx.py` (minuta Markdown → .docx no estilo do escritório, com notas de rodapé), `lint_vault.py` (LINT agendado, com achados em `gestao/status.md` §4 e incidentes no `napkin_log.md`) e aviso de conclusão do pipeline no WhatsApp do Douglas.
