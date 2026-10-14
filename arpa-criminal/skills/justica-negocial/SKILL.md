---
name: justica-negocial
description: Justiça penal negocial no ARPA-C, com análise estratégica de custo-benefício e consentimento informado do cliente. Ative com /negocial ou quando o caso envolver Acordo de Não Persecução Penal (ANPP, art. 28-A CPP, confissão formal e circunstanciada, pena mínima inferior a 4 anos, vedações do §2º, recusa do MP e remessa ao órgão superior, retroatividade a processos em curso), transação penal (art. 76 da Lei 9.099/95), composição civil dos danos (art. 74), suspensão condicional do processo ou sursis processual (art. 89, Súmula 243 STJ, Súmula 723 STF, Súmula 337 STJ), vedação na violência doméstica (art. 41 da Lei 11.340/06, Súmula 536 STJ), colaboração premiada ou delação (Lei 12.850/13, arts. 3º-A a 7º, direitos do colaborador e do delatado), proposta de acordo do Ministério Público, aceitar ou recusar acordo, riscos da confissão e reunião de decisão com o cliente.
---
# 🤝 Justiça Penal Negocial — ANPP, JECRIM, Sursis Processual e Colaboração (ARPA-C)

## ⚡ Gatilho e Ativação
- **Gatilho**: `/negocial`. Ativação automática pelo `arpac-estrategista`, que avalia o ramo **solução negociada** da árvore de teses sempre que a infração tiver pena máxima de até 2 anos (composição e transação), pena mínima de até 1 ano (*sursis* processual) ou inferior a 4 anos (ANPP), ou quando houver proposta ou sondagem do MP para colaboração.
- **Remissões** (não duplicar): `/contravencoes-penais` (rito do JECRIM em detalhe), `/maria-da-penha` (vedações e polo da vítima), `/dosimetria` (pena projetada e prescrição), `/decomposicao-penal` (Matriz de Provas → probabilidade de condenação), `/provas-nulidades` (teses que podem tornar o acordo desnecessário), `/lei-de-drogas` (tráfico privilegiado; art. 41 da Lei 11.343/06), `/crimes-contra-administracao-publica` (colaboração em crimes econômicos), `/gestao-escritorio` (termo de decisão informada e conflito de interesses).

## 1. Persona e Modo de Operação
- **Negociador técnico e garantista**: o acordo é instrumento da defesa, não atalho da acusação. O advogado informa, projeta cenários e registra; **a decisão é do cliente**.
- **Regra de ouro**: nunca recomendar acordo antes de rodar a Matriz de Licitude (`/provas-nulidades`), a Matriz de Provas (`/decomposicao-penal`), a prescrição, inclusive a projetada (`/prescricao`), e as teses de atipicidade e insignificância. Havendo chance real de arquivamento ou trancamento, a confissão é custo desnecessário.
- A prescrição em perspectiva não extingue a punibilidade (Súmula 438 STJ), mas pesa na matriz como risco para a acusação e poder de barganha para a defesa.

## 2. Mapa de Elegibilidade
| Instituto | Base | Limite de pena | Confissão? | Vedações centrais | Efeitos | Prescrição |
|---|---|---|---|---|---|---|
| Composição civil | Lei 9.099, art. 74 | Infração de menor potencial ofensivo (máx. até 2 anos — art. 61) | Não | — | Título executivo cível; em ação privada ou condicionada, renúncia à queixa ou representação | — |
| Transação penal | Lei 9.099, art. 76 | Idem | Não | §2º, I a III | Sem reincidência; registro só para impedir novo benefício em 5 anos (§4º); sem antecedentes nem efeitos civis (§6º) | Sem previsão expressa de suspensão |
| ANPP | CPP, art. 28-A | Pena mínima < 4 anos, com causas de aumento e diminuição (§1º); sem violência ou grave ameaça | **Sim** | §2º, I a IV | Fora da certidão de antecedentes, salvo para o §2º, III (§12); extinção da punibilidade (§13) | Suspensa (CP, art. 116, IV) |
| *Sursis* processual | Lei 9.099, art. 89 | Pena mínima ≤ 1 ano, em qualquer rito | Não | Processo ou condenação por outro crime; art. 77 CP | Extinção da punibilidade (§5º) | Suspensa (§6º) |
| Colaboração premiada | Lei 12.850, arts. 3º-A a 7º | Sem limite | Sim, com renúncia ao silêncio nos depoimentos (art. 4º, §14) | Utilidade e interesse públicos | Perdão, redução até 2/3, substituição, não denúncia (art. 4º, §4º), benefícios pós-sentença (§5º) | Suspensão por até 6 meses prorrogáveis (art. 4º, §3º) |

**Ordem lógica**: composição → transação → ANPP → *sursis* processual. O ANPP não se aplica se couber transação (art. 28-A, §2º, I); o descumprimento do ANPP pode justificar a não oferta do *sursis* (§11).

## 3. Acordo de Não Persecução Penal (art. 28-A CPP)
- **Requisitos**: não ser caso de arquivamento (se for, pedir o arquivamento antes); **confissão formal e circunstanciada**; infração sem violência ou grave ameaça (alcance quanto à violência contra coisa e aos crimes culposos com resultado violento `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`); pena mínima inferior a 4 anos, consideradas as causas de aumento e diminuição do caso concreto (§1º), com o critério da fração mais favorável e, no concurso de crimes, a soma ou exasperação por analogia às Súmulas 243 STJ e 723 STF `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; medida necessária e suficiente para reprovação e prevenção.
- **Vedações (§2º)**: cabível transação (I); reincidência ou elementos de conduta criminal habitual, reiterada ou profissional, salvo infrações pretéritas insignificantes (II); benefício de ANPP, transação ou *sursis* processual nos 5 anos anteriores (III); crimes de violência doméstica ou familiar, ou contra a mulher por razões da condição do sexo feminino, em favor do agressor (IV).
- **Condições (I a V)**: reparar o dano ou restituir a coisa, salvo impossibilidade; renunciar a bens indicados como instrumento, produto ou proveito; prestar serviço à comunidade pelo tempo da pena mínima reduzida de 1/3 a 2/3 (art. 46 CP); prestação pecuniária (art. 45 CP); outra condição proporcional e compatível. **Negociar**: valores compatíveis com a capacidade econômica documentada; renúncia de bens só com nexo demonstrado; fração máxima de redução da PSC; prazos exequíveis.
- **Procedimento**: termo escrito assinado pelo MP, investigado e defensor (§3º); audiência de homologação com verificação da voluntariedade, por oitiva do investigado na presença do defensor, e da legalidade (§4º); condições inadequadas, insuficientes ou abusivas → devolução ao MP para reformulação (§5º); recusa de homologação (§§7º e 8º); execução no juízo da execução (§6º); intimação da vítima (§9º); descumprimento → comunicação para rescisão e denúncia (§10), exigindo-se contraditório prévio `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; cumprimento → extinção da punibilidade (§13). Na investigação, homologa o juiz das garantias (art. 3º-B, XVII) `[VERIFICAR REDAÇÃO VIGENTE — implantação no TJPE]`.
- **Recusa do MP (§14)**: o investigado pode requerer a remessa dos autos ao órgão superior, na forma do art. 28 (procedimento afetado pelas ADIs 6.298, 6.299, 6.300 e 6.305 `[VERIFICAR REDAÇÃO VIGENTE]`). Prevalece que o ANPP não é direito subjetivo, mas poder-dever do MP, cuja recusa exige motivação concreta; o juiz não impõe o acordo, e a defesa controla a motivação pelo §14. Atacar recusa fundada em gravidade abstrata ou em ausência de confissão no inquérito `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. Requerer na primeira oportunidade para evitar preclusão.
- **Retroatividade e momento**: norma de natureza mista, mais benéfica, pois conduz à extinção da punibilidade (CF, art. 5º, XL; CP, art. 2º, parágrafo único). O STF, no HC 185.913/DF (Plenário, 2024), teria admitido o ANPP em processos em curso na entrada em vigor da Lei 13.964/2019, mesmo sem confissão anterior, desde que antes do trânsito em julgado, e fixado que, nos casos novos, a proposta ou a motivação da recusa deve vir antes do recebimento da denúncia `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — conferir teses, modulação e convergência com o STJ]`.
- **ANPP superveniente**: desclassificação ou reconhecimento de minorante (ex.: tráfico privilegiado) que leve a pena mínima abaixo de 4 anos → requerer vista ao MP, por analogia à Súmula 337 STJ `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.
- **Riscos da confissão (ponto central)**: (i) uso em caso de rescisão — tese defensiva: a confissão negocial é requisito de celebração, não prova, e não pode embasar condenação (arts. 155 e 197 CPP; *nemo tenetur*) `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; (ii) reflexos extrapenais — o ANPP não é título executivo, mas a confissão pode ser usada como prova em ação civil, improbidade, processo disciplinar ou trabalhista; (iii) terceiros — a narrativa pode atingir corréus; (iv) efeitos funcionais e profissionais (servidor público, registro de arma, concursos com investigação social, situação migratória) `[VERIFICAR REDAÇÃO VIGENTE da legislação específica]`.
- **Técnica de redação da confissão**: limitar-se ao núcleo fático da imputação, sem adjetivos, sem fatos novos, sem dados de terceiros (confissão não é colaboração), com cláusula de que é prestada exclusivamente para os fins do art. 28-A.

## 4. JECRIM: Composição Civil e Transação Penal (Lei 9.099/95)
- **Composição civil (art. 74)**: reduzida a escrito e homologada por sentença irrecorrível, vale como título executivo no cível; em ação privada ou pública condicionada, implica renúncia ao direito de queixa ou representação (parágrafo único). É a primeira porta: pode encerrar o caso sem qualquer sanção penal.
- **Transação penal (art. 76)**: proposta de pena restritiva de direitos ou multa; vedada se houver condenação definitiva por crime a pena privativa de liberdade (§2º, I), benefício nos 5 anos anteriores (II) ou circunstâncias desfavoráveis (III); não gera reincidência (§4º), não consta de antecedentes nem tem efeitos civis (§6º); apelação conforme o art. 82 (§5º). Descumprida, retoma-se a persecução (SV 35). **Vantagem comparativa**: não exige confissão.

## 5. Suspensão Condicional do Processo (art. 89 da Lei 9.099/95)
- **Requisitos**: pena mínima igual ou inferior a 1 ano, abrangidas ou não pela Lei 9.099; acusado que não esteja sendo processado nem tenha sido condenado por outro crime; requisitos do *sursis* penal (art. 77 CP); proposta com a denúncia e aceitação pelo acusado e pelo defensor na presença do juiz.
- **Condições**: reparação do dano, salvo impossibilidade; proibição de frequentar lugares; proibição de ausentar-se da comarca sem autorização; comparecimento mensal (§1º, I a IV); outras condições adequadas (§2º). Período de prova de 2 a 4 anos; revogação obrigatória (§3º) e facultativa (§4º); extinção da punibilidade (§5º); prescrição suspensa (§6º); recusa → prosseguimento (§7º).
- **Súmulas**: 243 STJ (incabível em concurso material, formal ou continuidade quando a pena mínima, pela soma ou pela majorante, ultrapassar 1 ano); 723 STF (incabível no crime continuado se a mínima da infração mais grave, com o aumento mínimo de 1/6, superar 1 ano); 337 STJ (cabível na desclassificação e na procedência parcial); 696 STF (recusa do promotor com discordância do juiz → remessa ao procurador-geral, por analogia ao art. 28). Revogação após o período de prova por fato ocorrido durante sua vigência `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — tema repetitivo do STJ]`.
- **Tática**: aceitar não é confessar; mas, havendo tese forte de rejeição da denúncia (art. 395) ou de absolvição sumária (art. 397), avaliar com o cliente se a análise da resposta à acusação deve preceder a aceitação `[VERIFICAR praxe local]`.

## 6. Vedação na Violência Doméstica
- **Lei 11.340/06, art. 41**: aos crimes com violência doméstica e familiar contra a mulher, independentemente da pena, não se aplica a Lei 9.099/95 (constitucionalidade declarada pelo STF na ADC 19). **Súmula 536 STJ**: *sursis* processual e transação não se aplicam aos delitos sujeitos ao rito da Lei Maria da Penha. ANPP vedado pelo art. 28-A, §2º, IV, cuja expressão "violência doméstica ou familiar" é discutida quanto a vítimas que não sejam mulheres `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. Detalhes e atuação pelo polo da vítima: `/maria-da-penha`.

## 7. Colaboração Premiada (Lei 12.850/13)
- **Natureza (art. 3º-A)**: negócio jurídico processual e meio de obtenção de prova, que pressupõe utilidade e interesse públicos. O STF, no HC 127.483 (Plenário, 2015), qualificou o acordo como negócio personalíssimo, com reflexos na legitimidade do delatado para impugná-lo `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — evolução posterior]`.
- **Negociação**: recebimento da proposta como marco de confidencialidade e possibilidade de indeferimento sumário justificado (art. 3º-B), com vedação de uso das informações se o acordo não for celebrado por iniciativa do celebrante `[VERIFICAR REDAÇÃO VIGENTE — art. 3º-B, §6º]`; nenhuma tratativa sem advogado ou defensor (art. 3º-C, §1º); conflito de interesses ou hipossuficiência → outro advogado ou Defensoria (§2º); dever de narrar todos os fatos ilícitos relacionados (§3º); a defesa instrui os anexos com as provas de corroboração (§4º).
- **Benefícios (art. 4º)**: perdão judicial, redução de até 2/3 ou substituição por restritivas, condicionados a resultados (identificação de coautores, estrutura da organização, prevenção de infrações, recuperação do produto, localização de vítima — I a V), ponderados pelo §1º; não oferecimento de denúncia para infração sem prévio conhecimento, se o colaborador não for o líder e for o primeiro a colaborar (§4º); após a sentença, redução até a metade ou progressão sem os requisitos objetivos (§5º). O juiz não participa da negociação (§6º).
- **Homologação (§7º)**: regularidade e legalidade; adequação dos benefícios, sendo nulas cláusulas que violem as regras legais de regime e progressão; adequação dos resultados; **voluntariedade**, especialmente se o colaborador está ou esteve sob cautelar (IV). Nula a renúncia ao direito de impugnar a homologação (§7º-B). Retratação: as provas autoincriminatórias não serão usadas exclusivamente contra o colaborador (§10). Rescisão por omissão dolosa (§17) ou por não cessar a conduta ilícita (§18).
- **Garantias do colaborador**: assistência por defensor em todos os atos (§15); renúncia ao silêncio e compromisso de dizer a verdade apenas nos depoimentos que prestar (§14); direitos do art. 5º (proteção, preservação da identidade, condução separada, audiência sem contato visual com os demais acusados, vedação de exposição na mídia, estabelecimento diverso); conteúdo mínimo do termo (art. 6º); sigilo até o recebimento da denúncia (art. 7º, §3º) `[VERIFICAR REDAÇÃO VIGENTE]`.
- **Defesa do delatado**: nenhuma cautelar real ou pessoal, recebimento de denúncia ou sentença condenatória com fundamento apenas nas declarações do colaborador (§16) — exigir corroboração externa e independente, rejeitando a corroboração cruzada entre colaboradores `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; manifestação do delatado sempre após o prazo do delator, em todas as fases (§10-A); acesso aos elementos que lhe digam respeito (SV 14; art. 7º, §2º `[VERIFICAR REDAÇÃO VIGENTE]`); inquirição do colaborador sobre benefícios, versões anteriores e interesse.
- **Conflito de interesses**: o escritório não patrocina colaborador e delatado no mesmo contexto fático — triagem obrigatória em `/gestao-escritorio`. Regimes esparsos (Lei 9.807/99, arts. 13 e 14; Lei 11.343/06, art. 41; Lei 9.613/98, art. 1º, §5º) usam a Lei 12.850 como parâmetro procedimental `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — integração entre regimes]`.

## 8. Matriz Custo-Benefício (entregável obrigatório)
1. **Probabilidade de condenação (P)**: faixa qualitativa — BAIXA, MÉDIA ou ALTA — justificada pela Matriz de Provas e pela Matriz de Licitude. Nunca percentual sem base.
2. **Pena projetada** (`/dosimetria`): cenário provável e pior cenário — pena, regime, substituição (art. 44 CP), *sursis* (art. 77 CP), detração e prescrição retroativa projetada.
3. **Efeitos do acordo**: antecedentes, reincidência, bloqueio de 5 anos, custo financeiro, tempo de cumprimento, efeitos civis, administrativos, profissionais e eleitorais (o ANPP não é condenação; inelegibilidade exige os pressupostos próprios da legislação eleitoral `[VERIFICAR REDAÇÃO VIGENTE]`).
4. **Riscos da confissão** (seção 3) e **fatores subjetivos**: tolerância a risco, desgaste do processo, exposição pública, família.

| Cenário | P | Desfecho penal | Antecedentes/reincidência | Custo e tempo | Efeitos extrapenais | Risco residual |
|---|---|---|---|---|---|---|
| A — Litigar: arquivamento ou absolvição | | | | | | |
| B — Litigar: condenação no cenário provável | | | | | | |
| C — Litigar: condenação no pior cenário | | | | | | |
| D — Acordo celebrado e cumprido | | | | | | |
| E — Acordo descumprido ou rescindido | | | | | | |

**Regra de recomendação**: favorecer D quando B ou C tiverem P MÉDIA ou ALTA com pena ou efeitos gravosos e os custos de D forem suportáveis; favorecer A quando P for BAIXA ou houver tese de ilicitude ou atipicidade capaz de eliminar a justa causa. Sempre considerar contraproposta de condições (art. 28-A, §5º) e documentar a recomendação.

## 9. Roteiro de Reunião com o Cliente (consentimento informado)
1. Reunião reservada; se o cliente estiver preso, no parlatório (EOAB, art. 7º, III). Família só participa com autorização expressa do cliente.
2. Explicar em linguagem simples a acusação, as provas e as teses de defesa.
3. Apresentar os cenários A a E, sem prometer resultado.
4. Explicar a confissão: o que significa, o que será dito e o que não será; que ninguém é obrigado a confessar; o que acontece se o acordo for rescindido.
5. Detalhar condições, valores, prazos, local de cumprimento e consequências do descumprimento.
6. Explicar efeitos sobre antecedentes, o bloqueio de 5 anos e os reflexos extrapenais.
7. Oferecer prazo de reflexão compatível com o prazo processual.
8. Registrar a decisão em **Termo de Decisão Informada** assinado pelo cliente e pelo advogado (opções apresentadas, riscos explicados, decisão tomada, data), arquivado conforme `/gestao-escritorio` (sigilo e LGPD).
9. Preparar o cliente para a oitiva de voluntariedade na homologação (art. 28-A, §4º; art. 4º, §7º, IV, da Lei 12.850). Na colaboração, verificar ainda conflito de interesses e pressões externas (prisão, família, corréus).

## 10. Checklist Obrigatório
- [ ] Matriz de Licitude, Matriz de Provas, prescrição e atipicidade foram analisadas antes de considerar o acordo?
- [ ] A pena cominada, com causas de aumento e diminuição e eventual concurso, foi calculada para cada instituto?
- [ ] Foram verificados os benefícios anteriores nos últimos 5 anos e a reincidência (art. 28-A, §2º, II e III; art. 76, §2º)?
- [ ] O caso envolve violência doméstica ou familiar (art. 41 da Lei 11.340; Súmula 536 STJ; art. 28-A, §2º, IV)?
- [ ] A composição civil ou a transação, que dispensam confissão, foram consideradas antes do ANPP?
- [ ] Houve recusa do MP sem motivação concreta? O pedido do §14 (ou a Súmula 696 STF no *sursis*) foi feito na primeira oportunidade?
- [ ] Em processo em curso, o cabimento do ANPP retroativo foi examinado `[REQUER CONSULTA]`?
- [ ] A confissão foi redigida restrita ao núcleo da imputação, sem fatos novos nem terceiros?
- [ ] As condições são proporcionais à capacidade econômica e exequíveis?
- [ ] Na colaboração: advogado em todas as tratativas, voluntariedade documentada, anexos com corroboração e ausência de conflito de interesses?
- [ ] Na defesa do delatado: corroboração externa exigida (art. 4º, §16) e ordem de manifestação respeitada (§10-A)?
- [ ] A matriz custo-benefício foi preenchida e o Termo de Decisão Informada foi assinado?

## 11. Integração com o ARPA-C
- **`arpac-triagem` (M0)**: faz o filtro objetivo em `analise/01-triagem.md` §6 (Triagem Negocial Preliminar: pena cominada, antecedentes e benefícios anteriores), com fonte e confiança. **`arpac-auditor-autos` (M1)**: registra em `analise/02-decomposicao.md` §1 e §2.6 a tipificação e as causas de aumento e diminuição imputadas.
- **`arpac-prazos-prescricao` (M1)**: em `wiki/prazos.md` e `analise/03-prazos-prescricao.md`, controla a suspensão da prescrição (CP, art. 116, IV; Lei 9.099, art. 89, §6º), o momento de requerer o ANPP (antes do recebimento da denúncia), o período de prova e os prazos das condições.
- **`arpac-estrategista` (M2/M3)**: avalia o ramo **solução negociada** em `analise/04-teses.md` §4 (Ramo Obrigatório — Solução Negociada, com o mapa de elegibilidade e a matriz custo-benefício) e, aprovada a via, define em `analise/06-blueprint.md` a peça: requerimento de proposta, remessa ao órgão superior (§14), aceitação com contraproposta ou impugnação da rescisão.
- **`arpac-pesquisador`**: CoVe de todos os pontos `[REQUER CONSULTA]` em `analise/05-jurisprudencia.md`. **`arpac-revisor`**: *red team* do MP (necessidade e suficiência, habitualidade) e do juiz (condições abusivas).
- **`arpac-controller`**: registra a reunião e o Termo em `gestao/log.md` e acompanha o cumprimento das condições na coluna `PROTOCOLADO / ACOMPANHAMENTO`, com alerta de risco de descumprimento.
- **Portões**: a via negocial só avança com "Aprovado" do Douglas e com a decisão documentada do cliente.

## 12. Integração NotebookLM
- **GESTÃO DE ESCRITÓRIOS**: protocolo de atendimento, consentimento informado e honorários na via negocial. **GESTÃO DE PROCESSOS**: POP de acompanhamento do cumprimento das condições. Sem MCP, aplicar o fallback da SPEC §6.

## ⚙️ Interface de Expansão
- `scripts/elegibilidade_negocial.py`: recebe pena mínima e máxima, frações de aumento e diminuição, concurso, antecedentes e benefícios anteriores e devolve a elegibilidade para composição, transação, ANPP e *sursis*, com justificativa.
- `scripts/matriz_custo_beneficio.py`: monta a tabela dos cenários A a E a partir de `analise/04-teses.md` e da saída de `/dosimetria`.
- Modelo futuro do Termo de Decisão Informada em `/gestao-escritorio` e monitor de cumprimento (datas de PSC e parcelas) integrado ao painel.
