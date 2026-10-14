---
name: gestao-escritorio
description: Habilidade de gestão do escritório criminal — atendimento inicial e funil de captação (inclusive família de preso), checagem de conflito de interesses entre corréus, ficha de cliente, contrato de honorários criminais por fase com cautelas éticas, procuração com poderes especiais, LGPD e sigilo no uso de IA (anonimização), financeiro básico (fluxo de caixa, inadimplência, centro de custo por caso), KPIs com fórmula, relatório ao cliente em linguagem simples e marketing ético. Ative com /gestao-escritorio ou quando o usuário pedir roteiro de primeira consulta, proposta ou contrato de honorários, procuração, checagem de conflito, política de LGPD, cobrança, indicadores do escritório, relatório ao cliente ou orientação sobre publicidade na advocacia.
---
# 🏛️ Habilidade: Gestão do Escritório Criminal (/gestao-escritorio)

Manual da operação do escritório que envolve a esteira ARPA-C: da primeira ligação ao relatório mensal ao cliente, passando por contrato, procuração, proteção de dados, caixa e indicadores. Escritório de referência: advocacia criminal de pequeno porte com sede no interior de Pernambuco (Timbaúba/PE) e atuação nos Tribunais.

> **Legenda** — 🔁 diretriz-base **substituível** pelo conteúdo do caderno **GESTÃO DE ESCRITÓRIOS** (ver 📓). 🔒 piso inegociável.

## ⚡ Gatilho e Ativação
* **Comando**: `/gestao-escritorio` — Modo Gestão (SPEC §4) ou consulta do `arpac-triagem` (intake, conflito, honorários) e do `arpac-controller` (KPIs).
* **Variações**: `consulta` (roteiro) · `conflito <nomes>` · `contrato <fases>` · `procuracao <atos>` · `kpis <mês>` · `relatorio <caso>` · `lgpd`.
* **Modo de Operação**: o assistente atua como **Gestor Administrativo-Jurídico do escritório**. Minutas de contrato, procuração e relatório são rascunhos para revisão e assinatura humanas.

## 🔒 Piso inegociável
1. Nunca prometer resultado: a advocacia criminal é obrigação de meio.
2. Teses colidentes entre corréus → não aceitar a defesa conjunta.
3. O cliente é o assistido, não o pagador; informação à família só com autorização do cliente.
4. Dado identificável de cliente nunca vai a serviço externo de IA sem anonimização.
5. Sem captação de clientela, sem mercantilização, sem aviltamento de honorários.

## 🔻 Funil de atendimento 🔁
`Contato → Qualificação (é criminal? há urgência? há conflito?) → Consulta → Proposta → Contrato → Caso aberto (POP-01)`. Registrar em cada etapa o canal de origem (indicação, site, redes, OAB, outro) e, se o contato se perder, o motivo (preço, já tinha advogado, sem urgência, conflito, fora da área). A conversão por etapa alimenta os KPIs.

## 🗣️ Roteiro da primeira consulta 🔁
1. **Acolhimento e sigilo**: explicar o sigilo profissional e quem é o cliente.
2. **Urgência**: há alguém preso (onde, desde quando, por qual título)? audiência marcada? mandado em aberto? intimação recebida (em que data)? Sim → prioridade P1 (Expedite) e POP-05/POP-04 de `/gestao-processos`.
3. **Procedimento**: inquérito, ação penal ou execução; número, vara, comarca; documentos disponíveis (intimação, BO, nota de culpa, decisão, denúncia).
4. **Narrativa livre**, depois perguntas abertas, sem julgamento moral. Orientar: não falar do caso com terceiros, por celular ou em redes sociais; não prestar depoimento sem advogado; nunca orientar ocultação ou destruição de prova.
5. **Condições pessoais** úteis à liberdade e à dosimetria: residência, trabalho, filhos e dependentes, saúde, antecedentes.
6. **Pessoas envolvidas** (corréus, vítima, testemunhas, empresas) para a checagem de conflito, **antes** de discutir estratégia.
7. **Expectativas**: fases do procedimento, cenários possíveis e riscos, sem promessa.
8. **Proposta** por fase, próximos passos e documentos a trazer.
9. **Registro** mínimo na ficha e no funil.

**Família de preso** (contato mais comum na urgência): identificar o vínculo e quem vai pagar; explicar que a defesa depende da vontade do preso, que escolhe seu advogado, e que a família só saberá o que ele autorizar; primeiro ato = entrevista com o preso (dispensa procuração — Estatuto da OAB, art. 7º, III). Se o preso já tiver advogado constituído, aceitar só com prévio conhecimento do colega, ressalvadas medidas urgentes e inadiáveis (Código de Ética e Disciplina). Acolher sem prometer: angústia não é critério de prazo.

## ⚔️ Checagem de conflito de interesses
1. Cruzar os nomes (réus, vítima, testemunhas, empresas) com clientes ativos e encerrados e com partes contrárias, **incluindo as pessoas e empresas do grupo empresarial em cujo jurídico interno o titular atua**.
2. **Corréus**: aceitar mais de um só se as teses forem convergentes e sem perspectiva de colidência. Colidência típica: um atribui a autoria ao outro; a menor participação de um agrava o outro; colaboração premiada ou confissão delatória; interesses opostos em ANPP; versões incompatíveis.
3. Na dúvida, não aceitar: defesa colidente é falta ética e expõe o processo à nulidade por deficiência de defesa com prejuízo (STF, Súmula 523).
4. **Conflito superveniente**: optar com prudência por um dos mandatos, renunciar aos demais e resguardar o sigilo (Código de Ética e Disciplina).
5. Registro: o `arpac-triagem` grava o resultado em `analise/01-triagem.md` §5 (`| Pessoa (iniciais) | Papel no caso | Vínculo com cliente/caso do escritório | Risco (NENHUM / POTENCIAL / CONFIRMADO) | Providência |`), com data e autor da checagem na coluna "Providência"; risco POTENCIAL ou CONFIRMADO gera o alerta CONFLITO DE INTERESSES (SCHEMA §7) e decisão do Douglas antes da contratação.

## 🗂️ Ficha de cliente (minimização de dados)
| Campo | Onde fica | Observação |
|---|---|---|
| Nome completo, CPF, RG, endereço, telefones | sistema administrativo (fora do vault) | nunca em `wiki/` nem em prompts |
| Cliente (assistido), corréus e vítimas por iniciais; apelido do caso | `wiki/ficha.md` §1 | vítima de processo em segredo só por iniciais |
| Situação prisional (unidade, data, título, custódia, revisão do art. 316) | `wiki/ficha.md` §2 | gera `#reu-preso` |
| Procedimento (CNJ/IP/APF, juízo, rito, fase, imputação) | `wiki/ficha.md` §1 | fonte e confiança |
| Condições pessoais relevantes | relato do cliente em `raw/` → ficha | saúde é dado sensível: só o necessário |
| Contato do cliente/família (iniciais) e escopo da autorização | `wiki/ficha.md` §4 + administrativo | ex.: "família: datas e situação prisional" |
| Pagador terceiro | administrativo + contrato | pagar não dá acesso à informação |
| Conflito de interesses | `analise/01-triagem.md` §5 | ver checagem acima |
| Fases contratadas e consentimentos (canal, uso de IA) | contrato + administrativo | — |

## 📜 Contrato de honorários criminais
**Fases contratáveis** (contratar e remunerar por fase, com objeto e marco final claros) 🔁:
| Fase | Objeto | Encerra com |
|---|---|---|
| Investigação | inquérito ou PIC: acesso aos autos (STF, Súmula Vinculante 14), depoimentos, requerimentos, ANPP | arquivamento ou oferecimento da denúncia |
| Plantão / custódia | flagrante e audiência de custódia | decisão da custódia |
| Liberdade | cada pedido ou HC, por instância | julgamento na instância contratada |
| 1º grau | resposta à acusação até a sentença | sentença e embargos de declaração |
| Júri | 1ª fase (até pronúncia/impronúncia) e 2ª fase (preparação e cada sessão) | ata da sessão; nova sessão, nova remuneração |
| Recursos | apelação/RESE e contrarrazões no TJ/TRF; Superiores à parte | acórdão e embargos |
| Execução penal | acompanhamento no SEEU por período ou por incidente | fim do período ou decisão |
| Assistência de acusação / vítima | habilitação, medidas protetivas, queixa-crime | conforme fase |

**Cláusulas essenciais**: objeto e fases; exclusões expressas (cível, outras ações, outros investigados, recursos não contratados); remuneração e forma de pagamento; despesas reembolsáveis com aprovação prévia (deslocamento a unidades prisionais e comarcas, cópias, assistente técnico ou perito particular); obrigação de meio; pagador terceiro sem acesso à informação salvo autorização do cliente; sigilo e LGPD; transparência sobre o uso de ferramentas de IA com anonimização e revisão humana; substabelecimento; revogação e renúncia (o advogado que renuncia continua representando o cliente nos 10 dias seguintes à notificação, salvo substituição — Estatuto da OAB, art. 5º, §3º); inadimplência; foro. O contrato escrito é título executivo (Estatuto da OAB, art. 24).

**Valores**: usar a tabela de honorários da OAB/PE como referência mínima — `[CONSULTAR TABELA VIGENTE DA OAB/PE]`; nunca inventar valores. Fixar segundo os critérios do Código de Ética (complexidade, tempo, urgência, réu preso, deslocamento, relevância, condição do cliente); o Código veda o aviltamento.

**Êxito no crime — cautelas** 🔁: nunca como remuneração exclusiva da defesa; evento definido de forma objetiva (ex.: "revogação da preventiva", "absolvição transitada em julgado"); nada condicionado a conduta do cliente contrária à lei ou à verdade; na assistência de acusação, evitar vincular honorário à condenação de alguém; confirmar o entendimento do Tribunal de Ética e Disciplina da OAB/PE e do CFOAB `[VERIFICAR]`.

## ✍️ Procuração com poderes específicos
| Ato | Exigência | Fundamento |
|---|---|---|
| Defesa em geral, intimações, substabelecimento | poderes gerais para o foro + substabelecer | — |
| Oferecer queixa-crime | poderes especiais, nome do querelante e menção do fato criminoso | CPP, art. 44 (atenção à decadência de 6 meses — art. 38) |
| Representação na ação pública condicionada | poderes especiais | CPP, art. 39 |
| Aceitar perdão do ofendido | poderes especiais | CPP, art. 55 |
| Arguir suspeição do juiz | poderes especiais ou petição assinada pela parte | CPP, art. 98 |
| Arguir falsidade documental | poderes especiais | CPP, art. 146 |
| ANPP, transação penal, suspensão condicional | poderes para negociar e aceitar; o ato exige também a anuência pessoal do assistido | CPP, art. 28-A; Lei 9.099/1995, arts. 76 e 89 |
| Receber e dar quitação (fiança, bens apreendidos) | poderes especiais | `[VERIFICAR exigência do juízo]` |
| Habeas corpus | dispensa procuração (qualquer pessoa pode impetrar) | CPP, art. 654 |

## 🔐 LGPD, sigilo e uso de IA
1. **Bases legais** do tratamento pelo escritório: execução de contrato e exercício regular de direitos em processo (LGPD, art. 7º, V e VI); dados sensíveis, exercício regular de direitos (art. 11, II, "d"). Antecedentes e dados criminais: tratar com o máximo rigor, como sensíveis.
2. **Classificação**: público · interno · confidencial · **crítico** (segredo de justiça, vítima de crime sexual, criança ou adolescente, saúde).
3. **Anonimização antes de qualquer serviço externo** (NotebookLM, chat web, transcrição, tradução): trocar nomes por papéis (`RÉU-1`, `VÍTIMA-1`, `TEST-A`); remover CPF, RG, endereço, telefone, placa, número do processo e locais identificáveis; a tabela de pseudônimos fica só no computador local. Material **crítico** não vai a serviço externo.
4. **Claude Code** lê arquivos locais, mas o conteúdo processado é enviado ao provedor do modelo: verificar termos de uso, retenção e treinamento do plano contratado `[VERIFICAR termos vigentes]` e manter a cláusula contratual de transparência.
5. **Segurança**: disco criptografado, autenticação em dois fatores, backup 3-2-1 criptografado, acesso por pessoa, descarte seguro, política de retenção após o encerramento `[DEFINIR prazo de guarda]`, plano de resposta a incidente com comunicação à ANPD e ao titular `[VERIFICAR regras vigentes]`.

## 💰 Financeiro básico 🔁
* **Fluxo de caixa mensal (regime de caixa)**: entradas (parcelas por fase, reembolsos) × saídas fixas (aluguel, sistemas, certificado digital, anuidade, contador) e variáveis (deslocamentos, cópias, peritos). Reserva de 3 a 6 meses de custos fixos; separar contas pessoal e do escritório.
* **Centro de custo por caso**: o ID do caso é o código; toda receita e despesa direta é lançada nele, assim como as horas registradas.
* **Régua de cobrança**: D-3 lembrete · D+1 contato cordial · D+7 segundo contato · D+15 proposta de renegociação · D+30 notificação formal. Limites éticos: cobrança discreta e só ao contratante; nunca reter documentos do cliente; nunca abandonar ato urgente; renúncia só formal, comunicada e fora de momento que cause dano irreparável (ex.: véspera de plenário ou réu preso sem defesa).

## 📈 KPIs do escritório criminal 🔁
| KPI | Fórmula | Fonte | Periodicidade | Meta-base |
|---|---|---|---|---|
| Taxa de prazos cumpridos | prazos cumpridos tempestivamente ÷ prazos vencidos no período × 100 | `wiki/prazos.md` §1 + `status.md` §2 | mensal | 100% |
| Cumprimento do prazo interno | peças em `PRONTO P/ PROTOCOLO` até o prazo interno (D-2) ÷ peças com prazo × 100 | `status.md` §3 + `log.md` | mensal | ≥ 90% |
| Tempo médio de diagnóstico de réu preso | Σ (hora do diagnóstico do Portão 1 − hora da abertura) ÷ nº de casos `#reu-preso` | `log.md` + `status.md` §6 | mensal | ≤ 24h |
| Taxa de liberdade obtida | liberdades obtidas ÷ pedidos de liberdade decididos × 100, por tipo e instância | `log.md` | trimestral | tendência (sem meta de resultado) |
| Conversão de consultas | contratos firmados ÷ consultas realizadas × 100 | funil | mensal | — |
| Ticket médio | honorários contratados no período ÷ nº de contratos no período | financeiro | mensal | — |
| Horas por caso | Σ horas registradas ÷ nº de casos, segmentado por fase e peça | registro de horas | mensal | base de precificação |
| Lead time da peça | média de dias entre a entrada do card e `PROTOCOLADO / ACOMPANHAMENTO` | `log.md` + `status.md` §7 | mensal | — |
| Taxa de retrabalho | minutas com veredito REPROVADO ÷ minutas revisadas × 100 | `status.md` §7 | mensal | ≤ 20% |
| Inadimplência | valores vencidos não pagos ÷ valores vencidos no período × 100 | financeiro | mensal | ≤ 10% |
| Custo-hora | custos fixos mensais ÷ horas produtivas no mês | financeiro | trimestral | — |
| Margem por caso | (honorários recebidos − custos diretos − horas × custo-hora) ÷ honorários recebidos × 100 | centro de custo | no encerramento | — |

Os indicadores são de gestão interna: resultados como a taxa de liberdade nunca são usados em publicidade.

## 🤝 Relacionamento com o cliente
Relatório em linguagem simples, mensal e a cada ato relevante, rascunhado a partir de `gestao/status.md` e enviado sempre por pessoa da equipe:
```markdown
# Atualização do seu caso — <mês/ano>
1. O que aconteceu: <fato, em uma ou duas frases, sem juridiquês>
2. O que isso significa para você: <efeito prático, sem promessa>
3. Próximos passos e datas: <ato, data, quem faz>
4. O que precisamos de você: <documento, informação, presença>
5. Dúvidas: <canal e horário de atendimento>
```
Cliente preso: entregar e explicar na visita; à família, só a parte autorizada. Frases curtas, sem siglas não explicadas, sem detalhes de estratégia por canais inseguros.

## 📣 Marketing ético
Referência: Provimento CFOAB n. 205/2021 sobre publicidade na advocacia `[VERIFICAR número e redação vigente]`, além do Código de Ética. Permitido: conteúdo informativo e educativo (artigos, aulas, palestras e lives sobre direitos e garantias, aproveitando a atuação docente do titular), perfil institucional sóbrio. Vedado: promessa de resultado; divulgar casos, clientes ou êxitos identificáveis; abordar pessoas em situação de vulnerabilidade (portas de delegacias, presídios, hospitais, velórios); explorar casos midiáticos para autopromoção; mencionar valores ou gratuidade como forma de captação. Impulsionamento pago: seguir estritamente o provimento `[VERIFICAR]`.

## ✅ Checklist obrigatório
- [ ] A urgência foi identificada na primeira consulta e a classe Expedite foi aplicada?
- [ ] A checagem de conflito, incluindo corréus e o grupo empresarial, está registrada em `01-triagem.md` §5?
- [ ] O contrato delimita fases, exclusões, despesas e pagador terceiro?
- [ ] Os valores seguem a tabela vigente da OAB/PE, sem aviltamento e sem êxito exclusivo?
- [ ] A procuração tem os poderes especiais exigidos pelos atos previstos?
- [ ] Dados identificáveis ficaram fora do vault e de serviços externos?
- [ ] O centro de custo do caso está ativo e a régua de cobrança respeita os limites éticos?
- [ ] O relatório ao cliente do mês foi enviado em linguagem simples?
- [ ] Os KPIs do mês foram calculados com as fórmulas acima?

## 🔗 Integração com o ARPA-C
* **`arpac-triagem`**: aplica o roteiro, a checagem de conflito e a minimização ao escrever `analise/01-triagem.md` e `wiki/ficha.md`.
* **`arpac-controller`**: calcula os KPIs na seção 5 do Painel Semanal da primeira semana do mês (`/gestao-processos`) e sugere o relatório ao cliente a partir do `status.md`; o envio é sempre humano.
* **`arpac-redator`**: pode minutar contrato e procuração, sempre como rascunho para o Portão 3.

## 📓 Integração NotebookLM — caderno GESTÃO DE ESCRITÓRIOS
Mecanismo do SPEC §6, nesta ordem:
1. Com MCP do NotebookLM na sessão (`mcp__notebooklm__*`), consultar o caderno com as perguntas abaixo e citar `[NotebookLM: Gestão de Escritórios]`.
2. Sem MCP, ler `Shared/conhecimento/escritorio.md`.
3. Sem nenhum dos dois, aplicar as diretrizes 🔁 e registrar `[SEM BASE NOTEBOOKLM — aplicar diretriz-base]`.

O caderno **substitui** as seções 🔁 quando divergir (funil, roteiro, financeiro, metas de KPI), nunca o 🔒 piso inegociável nem as exigências legais e éticas. Perguntas-padrão (iguais às de `notebooklm/cadernos.md`):
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

## ⚙️ Interface de Expansão
> [!IMPORTANT]
> Placeholders para scripts futuros: `conflito.py` (cruza nomes com a base de clientes e partes contrárias e devolve o registro padronizado), `kpis.py` (lê os `status.md`, os logs e a planilha financeira e preenche os indicadores do mês), `anonimizar.py` (gera a versão pseudonimizada de um documento e guarda a tabela de pseudônimos localmente) e geração de contrato e procuração em `.docx` via `/docx`.
