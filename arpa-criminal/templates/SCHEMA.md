---
documento: schema
versao: 1
atualizado_em: ""
origem: "SPEC ARPA-C §3, §5, §6 e §9 — em conflito, prevalece o SPEC"
---

# SCHEMA — Governança do Vault Criminal (ARPA-C)

Este arquivo é o "cérebro dentro do cérebro": define como a IA lê, grava e audita o conhecimento do escritório. Todo agente ARPA-C o obedece. O CLAUDE.md traz as regras de conduta; aqui estão as regras de dados.

## 1 Estrutura do Vault

```
[ESCRITORIO-CRIMINAL]/            ← VAULT (diretório onde o Claude Code é aberto)
├── CLAUDE.md  SCHEMA.md  memory.md  napkin_log.md
├── caso-modelo/                  ← esqueleto copiado para cada caso novo (não editar à toa)
├── Shared/  escritorio.md  estilo.md  painel-casos.md  equipe.md  calendario.md  conhecimento/
└── casos/<CNJ-ou-apelido>/       ← CASO
    ├── raw/      autos (PDF e MD convertido) — IMUTÁVEL
    ├── wiki/     index.md  ficha.md  cronologia.md  fatos-atomicos.md  prazos.md
    ├── analise/  01-triagem.md … 07-revisao.md
    ├── minutas/  <tipo-da-peca>-vN.md / .docx
    └── gestao/   status.md  log.md
```

Convenção de caminhos nos agentes: caminhos sem prefixo são relativos a `CASO`; `VAULT/...` indica a raiz.

## 2 Propriedade dos Arquivos (quem escreve o quê)

| Arquivo | Único escritor | Leitores principais |
|---|---|---|
| `raw/*` | ninguém (humano deposita; `arpac-auditor-autos` só acrescenta o `.md` convertido de um PDF) | todos |
| `wiki/ficha.md`, `analise/01-triagem.md` | `arpac-triagem` | todos |
| `wiki/index.md`, `wiki/cronologia.md`, `wiki/fatos-atomicos.md`, `analise/02-decomposicao.md` | `arpac-auditor-autos` | todos |
| `wiki/prazos.md`, `analise/03-prazos-prescricao.md` | `arpac-prazos-prescricao` | todos |
| `analise/04-teses.md` (fase M2), `analise/06-blueprint.md` (fase M3) | `arpac-estrategista` | pesquisador, revisor, redator |
| `analise/05-jurisprudencia.md` | `arpac-pesquisador` | estrategista, revisor, redator |
| `analise/07-revisao.md` | `arpac-revisor` | estrategista, redator, controller |
| `minutas/<peca>-vN.md` e `.docx` | `arpac-redator` | revisor, Douglas |
| `gestao/status.md`, `gestao/log.md`, `napkin_log.md`, `memory.md` | `arpac-controller` | todos |
| `VAULT/Shared/painel-semanal-AAAA-MM-DD.md` (opcional) | `arpac-controller`, só quando o Douglas pede para salvar | equipe |
| `VAULT/Shared/painel-casos.md` | `arpac-triagem` (cria o card) e `arpac-controller` (move e atualiza) | todos |
| Demais arquivos de `VAULT/Shared/` e `CLAUDE.md` | humano (a IA só propõe alterações); exceção: exports de `Shared/conhecimento/` gravados pelo `arpac-controller` após o "Aprovado" do Douglas (`notebooklm/cadernos.md`) | todos |

## 3 Convenção de Nomes

| Objeto | Padrão | Exemplo |
|---|---|---|
| Pasta do caso | nº CNJ quando houver; antes disso, apelido kebab-case sem nome completo de pessoa | `0000000-00.2026.8.17.0000`, `apf-trafico-2026-03`, `ip-homicidio-2026-01` |
| Arquivo bruto | `raw/AAAA-MM-DD_<tipo>_<id-ou-fl>.<ext>`; conversão com o mesmo nome-base em `.md` | `raw/2026-03-10_denuncia_id12345.pdf` e `.md` |
| Autos integrais | `raw/autos-integrais_AAAA-MM-DD.pdf` | |
| Minuta | `minutas/<tipo-da-peca>-vN.md` (N inteiro crescente; nunca sobrescrever versão anterior) | `minutas/resposta-a-acusacao-v2.md` |

Catálogo de slugs de peça: `resposta-a-acusacao`, `defesa-previa-drogas`, `defesa-preliminar-funcionario`, `memoriais`, `habeas-corpus`, `relaxamento-flagrante`, `liberdade-provisoria`, `revogacao-preventiva`, `substituicao-cautelar`, `apelacao-interposicao`, `apelacao-razoes`, `contrarrazoes-apelacao`, `rese-interposicao`, `rese-razoes`, `embargos-declaracao`, `embargos-infringentes`, `agravo-execucao`, `recurso-especial`, `recurso-extraordinario`, `agravo-resp`, `agravo-re`, `revisao-criminal`, `queixa-crime`, `habilitacao-assistente`, `manifestacao-medida-protetiva`, `manifestacao-anpp`, `requerimento-diligencias`, `progressao-regime`, `livramento-condicional`. Peça fora do catálogo: `peticao-<descricao-curta>`.

IDs estáveis e referenciáveis entre arquivos (nunca renumerar; item descartado recebe `[SUPERADO]`):

| Prefixo | Objeto | Arquivo de origem |
|---|---|---|
| `F#` | fato atômico | `wiki/fatos-atomicos.md` |
| `D#` | documento faltante | `analise/01-triagem.md` |
| `T#` / `T#.#` | tese (ramo / sub-ramo) | `analise/04-teses.md` |
| `P#` | precedente | `analise/05-jurisprudencia.md` |
| `R#` | pedido | `analise/06-blueprint.md` |
| `C#` | achado do revisor (CRÍTICO / RELEVANTE / ESTÉTICO) | `analise/07-revisao.md` |
| `Q#` | pergunta socrática (numeração local; citar como `02#Q3`; prioridade CRÍTICA / ALTA / COMPLEMENTAR) | 01, 02, 03, 04 |

## 4 YAML Frontmatter Penal

Todo arquivo de caso começa com o bloco comum abaixo; os campos extras de cada arquivo constam do respectivo modelo em `caso-modelo/` e só são preenchidos pelo dono do arquivo.

```yaml
---
caso: ""              # = nome da pasta em casos/
documento: ""         # identificador fixo (ficha, 01-triagem, minuta...)
modulo: ""            # M0 | M1 | M2 | M3 | M4 | M5 | GESTAO
agente: ""            # name: do agente escritor
versao: 0             # inteiro; +1 a cada regravação
status: vazio         # vazio | rascunho | concluido | aprovado | superado
atualizado_em: ""     # AAAA-MM-DD
confianca_geral: ""   # ALTA | MÉDIA | BAIXA
pendencias: 0         # nº de [PENDENTE] abertos no arquivo
alertas: []           # vocabulário da seção 7
tags: []              # etiquetas do Kanban sem "#"
---
```

Campos extras: `ficha` (cnj, polo, fase, rito, competencia, comarca, status_prisional, data_prisao); `01-triagem` (execucao); `prazos` (prazo_mais_proximo, prescricao_data_limite, proxima_revisao_316); `03` (data_de_referencia); `04` (polo); `05` (data_da_pesquisa, verificados, nao_verificados); `06` (peca, minuta_alvo); `07` (veredito_blueprint, veredito_minuta); `status` (coluna_kanban, etapa, prioridade, responsavel_humano); minuta (peca, baseada_em, revisao, docx).

O status `aprovado` só é gravado depois de "Aprovado" textual do Douglas no portão correspondente, registrado em `gestao/status.md` §6.

## 5 Fonte e Confiança (Confidence Scoring)

Todo fato registrado leva fonte e confiança, no formato `(fonte: id 123456, fl. 45 — ALTA)`.

| Nível | Critério | Tratamento |
|---|---|---|
| ALTA | 2 ou mais fontes concordantes, ou documento oficial (decisão, certidão, laudo, auto) | pode fundamentar a peça |
| MÉDIA | uma única fonte não oficial (depoimento, relato do cliente, petição da parte) | pode fundamentar, indicando a fonte |
| BAIXA / INFERIDO | dedução sem registro expresso nos autos | exige validação humana; marcar `[INFERIDO]` e gerar pergunta socrática |

Relato do cliente é fonte `cliente (atendimento AAAA-MM-DD)`, nunca equiparado a prova dos autos.

## 6 Operações

### 6.1 INGEST (novo documento em `raw/`)

O `arpac-auditor-autos` converte o PDF sem `.md` (Docling, via `/automacao`), acrescenta-o ao `wiki/index.md` (§1, §2 e §5), extrai fatos novos para `wiki/fatos-atomicos.md` com novos F#, atualiza `wiki/cronologia.md` e sinaliza contradições com `[CONTRADIÇÃO: F# × F#]`. Se houver nova intimação ou marco prescricional, o orquestrador reaciona o `arpac-prazos-prescricao`. Nada em `raw/` é editado, renomeado ou apagado.

### 6.2 QUERY (pergunta sobre o caso)

Ler primeiro `wiki/index.md`, depois `wiki/ficha.md` e os arquivos de `analise/`. Só abrir `raw/` quando a wiki não responder, e então apenas o trecho indicado no mapa das peças (arquivo e linhas). Toda resposta cita a fonte (id/fl.) e a confiança. Compilar uma vez, consultar muitas: o que for descoberto em `raw/` e faltar na wiki é devolvido ao dono do arquivo para INGEST.

### 6.3 LINT (auditoria periódica, pelo `arpac-controller`)

| Verificação | Regra |
|---|---|
| Frontmatter | campos comuns presentes e `atualizado_em` coerente |
| Rastreabilidade | todo F# com fonte e confiança; BAIXA sem validação vira pendência |
| Pendências | `[PENDENTE]` aberto há mais de 7 dias sobe para `gestao/status.md` §4 |
| Precedentes | nenhum P# NÃO VERIFICADO citado em minuta |
| Coerência | toda tese mantida em 06 tem pedido R#; todo R# tem tese |
| Prazos | prazo vencido sem ato registrado; revisão do art. 316 vencida |
| Kanban | card coerente com `gestao/status.md` (coluna, etiquetas, prazo) |
| Órfãos | arquivo de caso sem frontmatter, minuta sem revisão, caso sem card |
| NotebookLM | export de `Shared/conhecimento/` com mais de 180 dias |

## 7 Marcadores e Alertas Padronizados

Marcadores no texto: `[PENDENTE: descrição]`, `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`, `[VERIFICAR REDAÇÃO VIGENTE]`, `[INFERIDO]`, `[CONTRADIÇÃO: F# × F#]`, `[SUPERADO]`, `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`, `[SKILL INDISPONÍVEL: /gatilho]`, `[PREENCHER]` (só em templates e Shared/).

| Alerta | Gatilho | Etiqueta do Kanban |
|---|---|---|
| RÉU PRESO | cliente preso ou internado em qualquer modalidade | `#reu-preso` |
| PRAZO FATAL | termo final em até 2 dias (48 horas), ou réu preso com até 3 dias (🔴 da `/prazos-penais`) | `#prazo-fatal` |
| PRAZO CURTO | termo final em 3 a 5 dias corridos (🟡) | — |
| PRAZO VENCIDO | termo final ultrapassado sem ato | `#prazo-fatal` |
| PRESCRIÇÃO CONSUMADA | prazo prescricional já decorrido | `#prescricao-risco` |
| PRESCRIÇÃO IMINENTE | consumação em menos de 6 meses (🔴 da `/prescricao`) | `#prescricao-risco` |
| REVISÃO 90 DIAS | revisão do art. 316, p.ú., CPP vencida ou com limite em até 10 dias | `#reu-preso` |
| EXCESSO DE PRAZO | instrução ou inquérito além do razoável com réu preso | `#reu-preso` |
| CONFLITO DE INTERESSES | colidência entre clientes ou com caso do escritório | — |
| NULIDADE ABSOLUTA | vício que dispensa prova de prejuízo, a arguir de imediato | — |
| DOCUMENTO ESSENCIAL AUSENTE | peça indispensável à análise não está em `raw/` | — |
| PRECEDENTE NÃO VERIFICADO | P# sem URL consultada na sessão | — |
| MEDIDA PROTETIVA VIGENTE | MPU da Lei 11.340/06 em vigor | `#maria-da-penha` |
| JÚRI | competência do Tribunal do Júri | `#juri` |
| REPROVADO | veredito do `arpac-revisor` | — |

Nos retornos dos agentes ao orquestrador, os alertas vêm entre colchetes (ex.: `[RÉU PRESO]`). Correspondência com a skill `/arpa-criminal`: `[PRAZO FATAL < 48h]` é o seu `[PRAZO < 48h]` (vermelho) e PRAZO CURTO é o nível amarelo; PRESCRIÇÃO IMINENTE e PRESCRIÇÃO CONSUMADA desdobram o seu alerta PRESCRIÇÃO.

Etiquetas por classificação: `#execucao` (fase de execução penal), `#superiores` (STJ ou STF), `#maria-da-penha` (rito ou contexto da Lei 11.340/06), `#juri` (rito do júri).

## 8 Kanban (`Shared/painel-casos.md`)

Colunas, em ordem: `ENTRADA` → `TRIAGEM` → `DIAGNÓSTICO (aguarda Douglas)` → `ESTRATÉGIA` → `REDAÇÃO` → `REVISÃO` → `PRONTO P/ PROTOCOLO` → `PROTOCOLADO / ACOMPANHAMENTO` → `ARQUIVADO`.

Card (uma linha, sem nome completo nem CPF): `- [ ] **<CASO>** | <peça ou objetivo> | prazo: <AAAA-MM-DD ou —> | resp: <iniciais> | atualizado: <AAAA-MM-DD> #etiquetas`. Cada caso tem exatamente um card.

| Evento | Coluna de destino | Quem move |
|---|---|---|
| Caso registrado sem triagem | ENTRADA | humano ou `arpac-controller` |
| Fim do M0 | TRIAGEM | `arpac-triagem` (cria o card) |
| Fim do M1, diagnóstico e perguntas apresentados | DIAGNÓSTICO (aguarda Douglas) | `arpac-controller` |
| Portão 1 aprovado | ESTRATÉGIA | `arpac-controller` |
| Portão 2 aprovado | REDAÇÃO | `arpac-controller` |
| Minuta gravada | REVISÃO | `arpac-controller` |
| Minuta com veredito APROVADO (ou ajustes aplicados) | PRONTO P/ PROTOCOLO | `arpac-controller` |
| Douglas informa o protocolo | PROTOCOLADO / ACOMPANHAMENTO | `arpac-controller` |
| Encerramento do caso | ARQUIVADO (card marcado `[x]`) | `arpac-controller` |

## 9 Versionamento e Handoff

Cada agente regrava apenas os seus arquivos, incrementa `versao` e atualiza `atualizado_em`. Conteúdo substituído não é apagado da análise quando relevante para o histórico: marca-se `[SUPERADO]`. Minutas nunca são sobrescritas: correções geram `-vN+1`. O handoff entre agentes é feito exclusivamente pelos arquivos: o agente seguinte lê o arquivo do anterior, nunca a memória da conversa. As respostas às perguntas do Portão 1 ficam em `analise/01-triagem.md` §11 (gravadas pelo `arpac-triagem` em modo atualização); as decisões de todos os portões, em `gestao/status.md` §6 (gravadas pelo `arpac-controller`). O agente aceita o cabeçalho `[HANDOFF ARPA-C → ...]` da skill `/arpa-criminal` (`Caso:`, `Modo:`, `Etapa:`), mas a lista "Grave" do handoff nunca amplia os arquivos que ele pode gravar.

## 10 Sigilo e LGPD nos Dados

Pastas, cards e nomes de arquivo usam CNJ, apelido neutro e iniciais. Processos em segredo de justiça (violência doméstica, dignidade sexual, ECA) identificam vítimas apenas por iniciais em todo o vault. Buscas na internet nunca levam nome, CPF ou dado do caso: pesquisa-se a tese, não o cliente. `Shared/conhecimento/` não recebe dados de casos.
