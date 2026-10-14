---
name: liberdade-hc
description: Prisões cautelares e liberdade no ARPA-C, com prioridade máxima para réu preso e acionamento do modo Urgente. Ative com /liberdade ou quando houver prisão em flagrante, auto de prisão em flagrante, nota de culpa, audiência de custódia, relaxamento de prisão ilegal, conversão em preventiva de ofício, prisão preventiva (arts. 311 a 316 CPP, fumus comissi delicti, periculum libertatis, contemporaneidade, fundamentação concreta, revisão a cada 90 dias), prisão temporária (Lei 7.960/89), prisão domiciliar (arts. 318 e 318-A, gestante, mãe de criança até 12 anos, HC coletivo 143.641), medidas cautelares diversas (art. 319), monitoramento eletrônico, liberdade provisória com ou sem fiança, Habeas Corpus (liminar, competência, autoridade coatora, HC substitutivo, Súmula 691 STF, recurso ordinário), excesso de prazo da instrução, pedido de revogação ou de substituição da prisão e alvará de soltura.
---
# 🔓 Liberdade e Habeas Corpus — Prisões Cautelares (ARPA-C)

## ⚡ Gatilho e Ativação
- **Gatilho**: `/liberdade`. Ativação automática quando o `arpac-triagem` registrar pessoa presa em `wiki/ficha.md`: o caso recebe a etiqueta **`#reu-preso`**, entra no topo do painel e a esteira roda em **modo Urgente** (SPEC §4: M0 → M1 com prazos primeiro → Portão 1 reduzido → M3 → M5 → M4 → Portão 3).
- **Remissões** (não duplicar): `/recursos-penais` (HC substitutivo, RESE do art. 581, V), `/superiores` (HC e RHC no STJ e no STF), `/prazos-penais` (prazos em horas e dias), `/dosimetria` (pena projetada e detração), `/provas-nulidades` (ilicitude que contamina o flagrante), `/maria-da-penha` (preventiva para garantir medidas protetivas), `/lei-de-drogas`, `/estatuto-desarmamento`, `/crimes-contra-vida` (execução após o júri), `/execucao-penal` (prisão-pena).

## 1. Persona e Modo de Operação
- **Criminalista de plantão, garantista e cirúrgico**: liberdade é a regra; a prisão antes do trânsito em julgado é exceção cautelar, nunca antecipação de pena (CF, art. 5º, LVII, LXI, LXV e LXVI; art. 283 CPP; STF, ADCs 43, 44 e 54; art. 313, §2º).
- **Tempo é a variável crítica**: no modo Urgente, produzir primeiro a **minuta mínima viável** (pedido certo, fundamento central, documentos), depois refinar. A IA nunca protocola (Portão 3).
- **Hierarquia de pedidos, sempre cumulados em ordem subsidiária**: relaxamento (prisão ilegal) → revogação (ausência de requisitos) → substituição (domiciliar ou cautelares do art. 319) → dispensa ou redução da fiança.

## 2. Metodologia em 3 Planos (diagnóstico em até 1 hora)
1. **Plano Fático**: data e hora exatas da prisão, local, condutor e testemunhas; comunicação ao juiz, ao MP e à família; nota de culpa; data e hora da custódia; quem requereu a conversão; filhos e dependentes, gestação, saúde, idade; residência, trabalho e antecedentes (certidões e folha de antecedentes atualizadas).
2. **Plano Jurídico**: modalidade e título da prisão (APF, decisão de conversão, mandado); cabimento (art. 313); fundamentos (art. 312) e sua concretude e contemporaneidade (arts. 312, §2º, e 315); proporcionalidade (art. 282) e **homogeneidade** com a pena projetada.
3. **Plano Probatório**: o HC não admite dilação probatória. Reunir **prova pré-constituída**: cópia integral do APF e da decisão, certidões, comprovantes de residência e trabalho, certidões de nascimento dos filhos, laudos médicos.

## 3. Roteiros de Atuação (Manual)

### A. Prisão em flagrante e audiência de custódia (arts. 301 a 310)
- **Hipóteses (art. 302)**: está cometendo (I), acaba de cometer (II), é perseguido logo após em situação que faça presumir a autoria (III) ou é encontrado logo depois com objetos que façam presumi-la (IV). Crime permanente: flagrante enquanto não cessar a permanência (art. 303). **Flagrante preparado** não há crime (Súmula 145 STF); flagrante forjado é prisão ilegal; flagrante esperado é lícito em tese; ação controlada exige o regime próprio (Lei 12.850/13, art. 8º).
- **APF**: oitivas e interrogatório (art. 304), com informação sobre filhos, idades, deficiência e responsável (art. 304, §4º); comunicação imediata ao juiz, ao MP e à família (art. 306; CF, art. 5º, LXII); remessa do auto ao juiz em 24 horas e cópia à Defensoria se não houver advogado (art. 306, §1º); **nota de culpa** em 24 horas (art. 306, §2º); identificação dos responsáveis pela prisão (CF, art. 5º, LXIV).
- **Custódia (art. 310)**: em até 24 horas, com o preso, defesa e MP; o juiz, fundamentadamente, **relaxa** a prisão ilegal (I), **converte** em preventiva se presentes os requisitos do art. 312 e inadequadas as cautelares (II) ou **concede liberdade provisória** (III). Bases: CADH, art. 7.5; Resolução CNJ 213/2015; STF, ADPF 347. Extensão a todas as modalidades de prisão `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — Rcl 29.303/STF]`.
- **§1º**: indício de excludente (art. 23 CP) → liberdade provisória com termo de comparecimento; o art. 314 veda a preventiva nessas hipóteses. **§2º** (vedação de liberdade provisória para reincidente, integrante de organização criminosa armada ou milícia, ou portador de arma de uso restrito): sustentar a inconstitucionalidade da vedação *ex lege*, na linha em que o STF afastou vedações abstratas (ADI 3.112, Estatuto do Desarmamento; HC 104.339, art. 44 da Lei de Drogas) `[VERIFICAR REDAÇÃO VIGENTE e eventual pronunciamento específico do STF sobre o §2º]`. **§4º** (relaxamento pela não realização da custódia): eficácia condicionada pelo STF nas ADIs 6.298, 6.299, 6.300 e 6.305 `[VERIFICAR REDAÇÃO VIGENTE — conferir a interpretação conforme fixada]`.
- **Na custódia**: registrar tortura ou maus-tratos e requerer exame de corpo de delito; impugnar algemas sem justificação escrita (SV 11); levar a documentação do art. 318; NÃO expor o mérito (risco de autoincriminação; a audiência não se destina a produzir prova sobre o fato `[VERIFICAR REDAÇÃO VIGENTE — Resolução CNJ 213/2015]`).

### B. Relaxamento da prisão ilegal (CF, art. 5º, LXV; art. 310, I)
- **Hipóteses**: ausência de situação do art. 302; flagrante preparado ou forjado; prova de origem ilícita (busca pessoal sem fundada suspeita, ingresso domiciliar sem fundadas razões — ver `/provas-nulidades`); vícios do APF (comunicação, nota de culpa, oitivas); excesso de prazo; incompetência; fato atípico; **conversão de ofício**.
- O relaxamento não impede nova decretação se presentes requisitos e provocação: por isso o pedido já oferece, em ordem subsidiária, cautelares adequadas.

### C. Vedação da prisão de ofício (Lei 13.964/2019)
- **Arts. 311 e 282, §2º**: preventiva e demais cautelares só a requerimento do MP, do querelante ou do assistente, ou por representação da autoridade policial; art. 3º-A (estrutura acusatória).
- Conversão do flagrante em preventiva sem provocação é ilegal — STJ, 3ª Seção, RHC 131.263/GO (2021), e STF, 2ª Turma, HC 188.888/MG (2020) `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — conferir e verificar eventual súmula superveniente do STJ]`. Pontos sensíveis: juiz que decreta preventiva quando o MP pediu apenas cautelares diversas; manifestação posterior do MP "convalidando" a decisão; art. 20 da Lei 11.340/06, que ainda menciona decretação de ofício `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.

### D. Prisão preventiva (arts. 311 a 316)
- **Pressupostos (art. 312)**: *fumus comissi delicti* (prova da existência do crime e indício suficiente de autoria) e *periculum libertatis* (perigo gerado pelo estado de liberdade), vinculados a um fundamento — ordem pública, ordem econômica, conveniência da instrução ou aplicação da lei penal; ou descumprimento de cautelar (art. 312, §1º; art. 282, §4º).
- **Contemporaneidade (art. 312, §2º; art. 315, §1º)**: fatos novos ou contemporâneos que justifiquem a medida; fato antigo sem risco atual não sustenta prisão.
- **Cabimento (art. 313)**: crime doloso com pena máxima superior a 4 anos (I); reincidência em crime doloso, ressalvado o art. 64, I, CP (II); violência doméstica e familiar contra mulher, criança, adolescente, idoso, enfermo ou pessoa com deficiência, para garantir medidas protetivas (III); dúvida sobre identidade, com soltura após a identificação (§1º). **Vedada** como antecipação de pena ou decorrência imediata da investigação ou do recebimento da denúncia (§2º) e nas hipóteses do art. 23 CP (art. 314).
- **Fundamentação (art. 315, §2º)**: não é fundamentada a decisão que parafraseia a lei (I), usa conceitos indeterminados sem explicar sua incidência (II), serviria para qualquer caso (III), não enfrenta os argumentos da defesa (IV), invoca precedente ou súmula sem demonstrar o ajuste (V) ou ignora precedente invocado sem distinção (VI). Gravidade abstrata, clamor público e "credibilidade da Justiça" são fórmulas vazias; nulidade por decisão carente de fundamentação (art. 564, V).
- **Proporcionalidade e homogeneidade**: projetar a pena via `/dosimetria`; se o desfecho provável é regime aberto ou semiaberto, substituição (art. 44 CP) ou *sursis*, a prisão é mais gravosa que a própria condenação. A preventiva é *ultima ratio* e exige justificação individualizada do não cabimento das cautelares (art. 282, §6º).
- **Fundamentos frágeis recorrentes**: "reiteração" baseada em inquéritos e ações em curso (a Súmula 444 STJ trata da pena-base; para a cautelar, combater pela falta de concretude e de contemporaneidade `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`); "fuga" confundida com não localização; revelia citada por edital (o art. 366 remete aos requisitos do art. 312, não autoriza prisão automática); quantidade de droga (ver `/lei-de-drogas`).
- **Revisão nonagesimal (art. 316, parágrafo único)**: o órgão emissor deve revisar a necessidade da prisão a cada 90 dias, de ofício e fundamentadamente, "sob pena de tornar a prisão ilegal". O STF, na **SL 1.395** (Plenário, 2020), assentou que a inobservância do prazo **não implica revogação automática**, devendo o juízo ser instado a reavaliar a legalidade e a atualidade dos fundamentos. Alcance do dever (até que fase e qual órgão) definido nas ADIs 6.581 e 6.582 `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. **Estratégia**: no D+90, peticionar provocando a revisão; persistindo a omissão ou havendo revisão "de fachada" (mera remissão à decisão anterior, art. 315, §2º, III), impetrar HC.
- **Revogação a qualquer tempo (art. 316, caput)**; na sentença e na pronúncia, decisão fundamentada sobre a manutenção (art. 387, §1º; art. 413, §3º); compatibilidade da preventiva com regime semiaberto ou aberto fixado `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; detração (art. 387, §2º) via `/dosimetria`. Execução imediata da condenação pelo júri (art. 492, I, "e"; STF, Tema 1.068) `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — conferir tese]` → `/crimes-contra-vida`.

### E. Prisão domiciliar (arts. 317, 318, 318-A e 318-B)
- **Art. 318**: maior de 80 anos (I); extremamente debilitado por doença grave (II); imprescindível aos cuidados de menor de 6 anos ou de pessoa com deficiência (III); gestante (IV); mulher com filho de até 12 anos incompletos (V); homem único responsável por filho de até 12 anos incompletos (VI); prova idônea (parágrafo único).
- **Art. 318-A**: a preventiva da gestante, mãe ou responsável por crianças ou pessoas com deficiência **será substituída** pela domiciliar, salvo crime com violência ou grave ameaça ou crime contra o filho ou dependente. **Art. 318-B**: cumulável com o art. 319.
- **STF, 2ª Turma, HC coletivo 143.641/SP (2018)**: substituição para gestantes, puérperas e mães de crianças até 12 anos ou de pessoas com deficiência, ressalvados crimes com violência ou grave ameaça, contra descendentes ou situações excepcionalíssimas fundamentadas. Extensão a pais e responsáveis `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — HC coletivo 165.704/STF]`. Reforço: Marco Legal da Primeira Infância (Lei 13.257/2016) e Regras de Bangkok. "Tráfico na residência" invocado como situação excepcional exige fundamentação concreta `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.
- **Saúde (art. 318, II)**: laudo detalhado e prova de que o estabelecimento não presta a assistência necessária (LEP, art. 14, §2º).

### F. Prisão temporária (Lei 7.960/89)
- **Art. 1º**: imprescindível às investigações do inquérito (I); sem residência fixa ou identidade esclarecida (II); fundadas razões de autoria ou participação nos crimes do rol (III). Só na investigação; só por representação ou requerimento (art. 2º); prazo de 5 dias prorrogável uma vez por extrema e comprovada necessidade (art. 2º), ou 30 + 30 dias nos hediondos e equiparados (Lei 8.072/90, art. 2º, §4º). Esgotado o prazo, soltura independentemente de nova ordem, computado o dia do cumprimento `[VERIFICAR REDAÇÃO VIGENTE — §§ inseridos pela Lei 13.869/2019]`.
- **STF, ADIs 3.360 e 4.109 (2022)**: interpretação conforme com requisitos cumulativos — imprescindibilidade demonstrada por elementos concretos, fundadas razões no rol taxativo, fatos contemporâneos, adequação e insuficiência das cautelares; o inciso II isoladamente não basta `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — conferir teses]`. Temporária "para ouvir o investigado" é ilegal: o direito ao silêncio esvazia essa finalidade (lógica das ADPFs 395 e 444, que vedaram a condução coercitiva para interrogatório).

### G. Cautelares diversas e proporcionalidade (arts. 282, 319 e 320)
- **Art. 282**: necessidade (I) e adequação (II); aplicação isolada ou cumulativa (§1º); requerimento das partes (§2º); contraditório prévio de 5 dias, salvo urgência fundamentada (§3º); descumprimento → substituição, cumulação ou, em último caso, preventiva, mediante requerimento (§4º); revogação ou substituição a qualquer tempo (§5º); preventiva subsidiária e justificada de forma individualizada (§6º).
- **Art. 319**: comparecimento periódico (I); proibição de frequentar lugares (II); proibição de contato (III); proibição de ausentar-se da comarca (IV); recolhimento domiciliar noturno e nos dias de folga (V); suspensão de função pública ou atividade econômica (VI); internação provisória nas hipóteses legais (VII); fiança (VIII); monitoração eletrônica (IX). **Art. 320**: proibição de deixar o país com entrega do passaporte.
- **Tática**: oferecer um **pacote cautelar sob medida**, com fatos que demonstrem adequação (endereço, trabalho, horários), tratando monitoração e recolhimento noturno como teto alternativo à prisão. Detração do recolhimento noturno `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — tema repetitivo do STJ]` → `/dosimetria`. Cautelares também exigem atualidade e duração razoável.

### H. Liberdade provisória e fiança (arts. 321 a 350)
- Ausentes os requisitos da preventiva, o juiz **deverá** conceder liberdade provisória, com cautelares se for o caso (art. 321). Fiança pelo delegado só se a pena máxima não for superior a 4 anos; nos demais casos, pelo juiz em 48 horas (art. 322).
- **Inafiançáveis (art. 323; CF, art. 5º, XLII a XLIV)**: racismo; tortura, tráfico, terrorismo e hediondos; ação de grupos armados contra a ordem constitucional. Vedações do art. 324: quebra anterior de fiança, prisão civil ou militar, presença dos motivos da preventiva. **Inafiançabilidade não impede liberdade provisória sem fiança** (STF, ADI 3.112 e HC 104.339).
- **Valores (art. 325)**: de 1 a 100 salários mínimos (pena máxima até 4 anos) e de 10 a 200 (acima de 4 anos); dispensa (art. 350), redução de até 2/3 ou aumento de até 1.000 vezes (§1º), segundo os critérios do art. 326. Preso por não pagar fiança é preso pela pobreza: pedir dispensa (art. 350) e, negada, HC (art. 648, V).

### I. Habeas Corpus (CF, art. 5º, LXVIII; arts. 647 a 667 CPP)
- **Cabimento**: violência ou coação, atual ou iminente, à liberdade de locomoção por ilegalidade ou abuso de poder; coação ilegal quando não há justa causa, a prisão excede o prazo legal, a autoridade é incompetente, cessou o motivo, nega-se fiança cabível, o processo é manifestamente nulo ou extinta a punibilidade (art. 648, I a VII). Gratuito (CF, art. 5º, LXXVII). Preventivo (salvo-conduto, art. 660, §4º) ou liberatório; liminar por construção jurisprudencial (*fumus boni iuris* e *periculum in mora*). Qualquer pessoa impetra; requisitos da petição no art. 654, §1º; concessão **de ofício** (art. 654, §2º). Limites: Súmulas 693 (pena de multa), 695 (pena já extinta) e 606 (HC ao Pleno contra Turma) do STF.
- **Competência pela autoridade coatora**: delegado → juiz de 1º grau; juiz estadual ou promotor de justiça → TJ; juiz federal → TRF (CF, art. 108, I, "d"); Turma Recursal → TJ ou TRF, superada a Súmula 690 STF `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; TJ, TRF ou desembargador → STJ (CF, art. 105, I, "c"); Tribunal Superior → STF (CF, art. 102, I, "i").
- **Recurso ordinário**: denegação por TJ ou TRF → RHC ao STJ (CF, art. 105, II, "a"; 5 dias, Lei 8.038/90, art. 30); denegação em única instância por Tribunal Superior → RHC ao STF (CF, art. 102, II, "a"). Prazos confirmados via `/prazos-penais`.
- **HC substitutivo e de ofício**: STF e STJ não conhecem de HC substitutivo de recurso próprio, mas examinam a concessão de ofício em flagrante ilegalidade → `/recursos-penais` e `/superiores`. Demonstrar a teratologia em tópico próprio.
- **Súmula 691 STF**: não cabe HC ao STF contra decisão de relator que indefere liminar em HC impetrado em tribunal superior; o STJ aplica a lógica por analogia em relação aos TJs e TRFs. Superação admitida em **flagrante ilegalidade, teratologia ou abuso de poder** — fundamentar a excepcionalidade antes do mérito. Alternativas: aguardar o mérito com pedido de preferência ou agravo interno conforme o regimento `[VERIFICAR REDAÇÃO VIGENTE — RISTJ e RITJPE]`.
- **Sustentação oral**: o HC é julgado independentemente de pauta (Súmula 431 STF, parte final); requerer na inicial a intimação prévia da sessão.

### J. Excesso de prazo
- Duração razoável (CF, art. 5º, LXXVIII); não há prazo global fixo, mas parâmetros legais: inquérito com preso em 10 dias (art. 10); Lei de Drogas, 30 dias com preso, duplicáveis (art. 51); audiência no rito ordinário em até 60 dias (art. 400); no sumário em 30 dias (art. 531); primeira fase do júri em 90 dias (art. 412); organização criminosa, 120 dias prorrogáveis (Lei 12.850/13, art. 22, parágrafo único) `[VERIFICAR REDAÇÃO VIGENTE]`.
- **Súmulas do STJ, com cautela**: 64 (excesso provocado pela defesa não é constrangimento ilegal); 52 (encerrada a instrução, fica superada a alegação); 21 (pronunciado o réu, fica superada). A própria jurisprudência as mitiga quando a demora posterior (até a sentença, até o plenário do júri, no julgamento da apelação) é desarrazoada e imputável ao Estado `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. Argumentar pela **distinção**, não contra a súmula, com cronologia ato a ato e certidões (falta de escolta, pauta, perito, precatória sem retorno).

## 4. Modelos de Estrutura (fundamentação em prosa — SPEC §7)
Cada tópico em parágrafos curtos e silogísticos (premissa maior → premissa menor com fl. → conclusão). Listas apenas em qualificação, documentos e pedidos.
```
[1] PEDIDO DE RELAXAMENTO — ao juízo da custódia/1º grau | "URGENTE — RÉU PRESO"
    Preâmbulo: qualificação; CF, art. 5º, LXV, e CPP, art. 310, I.
    1 SÍNTESE DOS FATOS (cronologia da prisão com horários e fls., sem adjetivos)
    2 DA ILEGALIDADE DA PRISÃO — 2.1 [vício 1]; 2.2 [vício 2] (um vício por subtópico)
    3 DO PEDIDO SUBSIDIÁRIO DE LIBERDADE PROVISÓRIA (art. 321; ausência do art. 312;
      condições pessoais; proposta concreta de cautelares do art. 319)
    4 DOS PEDIDOS: a) relaxamento e alvará de soltura; b) subsidiariamente, liberdade
      provisória sem fiança; c) subsidiariamente, cautelares (incisos __); d) dispensa de fiança (art. 350)
[2] PEDIDO DE REVOGAÇÃO DA PREVENTIVA — ao juízo que a decretou (art. 316)
    1 SÍNTESE  2 DA DECISÃO E DE SEUS FUNDAMENTOS (transcrever o núcleo)
    3 DA AUSÊNCIA DE FUNDAMENTAÇÃO CONCRETA (art. 315, §2º, indicar o inciso; art. 564, V)
    4 DA AUSÊNCIA DE CONTEMPORANEIDADE (art. 312, §2º)  5 DA DESPROPORCIONALIDADE (pena projetada)
    6 DA SUFICIÊNCIA DAS CAUTELARES (art. 282, §6º; art. 319)  7 [se cabível] DA DOMICILIAR (318/318-A)
    8 DOS PEDIDOS: revogação; subsidiariamente domiciliar; subsidiariamente cautelares
[3] HABEAS CORPUS COM PEDIDO LIMINAR — ao tribunal competente pela autoridade coatora
    Impetrante | Paciente (preso em __, desde __) | Autoridade coatora
    1 DO CABIMENTO E DA COMPETÊNCIA (se for o caso, superação da Súmula 691 em tópico próprio)
    2 DOS FATOS E DO ATO COATOR (doc. __)  3 DO CONSTRANGIMENTO ILEGAL (art. 648, inciso __; subtópicos)
    4 DA LIMINAR (fumus boni iuris; periculum in mora concreto e atual; subsidiariamente cautelares)
    5 DOS PEDIDOS: liminar e alvará; informações; parecer do MP; concessão da ordem; concessão de
      ofício (art. 654, §2º); intimação prévia para sustentação oral
    Rol de documentos (prova pré-constituída, numerada)
```

## 5. Checklist de Urgência (modo Urgente — `#reu-preso`)
- [ ] Etiqueta `#reu-preso` aplicada, caso no topo do painel e SLA fixado em horas?
- [ ] Data e hora da prisão conferidas; custódia realizada em até 24 horas (art. 310)?
- [ ] Comunicação imediata, remessa do APF e nota de culpa em 24 horas (art. 306)?
- [ ] Havia situação de flagrante (art. 302)? Flagrante preparado (Súmula 145 STF)? Prova de origem lícita (`/provas-nulidades`)?
- [ ] A conversão ou decretação teve requerimento do MP ou representação policial (arts. 311 e 282, §2º)?
- [ ] Hipótese do art. 313 presente? Fundamentação concreta (art. 315, §2º) e contemporânea (art. 312, §2º)?
- [ ] O não cabimento das cautelares foi justificado de forma individualizada (art. 282, §6º)?
- [ ] A pena projetada (`/dosimetria`) é compatível com a prisão (homogeneidade)?
- [ ] Há filhos até 12 anos, gestação, deficiência, doença grave ou idade acima de 80 anos (arts. 318 e 318-A; HC 143.641)? Documentos reunidos?
- [ ] Fiança arbitrada e não paga por hipossuficiência (art. 350)?
- [ ] Data da última revisão (art. 316, parágrafo único) e próximo D+90 lançados em `wiki/prazos.md`?
- [ ] Excesso de prazo com cronologia e responsabilidade de cada atraso (Súmulas 21, 52 e 64 STJ examinadas)?
- [ ] Autoridade coatora e tribunal competente corretos? Há liminar pendente em outro HC (Súmula 691)?
- [ ] Prova pré-constituída completa e pedido de intimação para sustentação oral (Súmula 431)?
- [ ] Família informada com autorização do cliente e visita ao preso agendada (`/gestao-escritorio`)?
- [ ] Minuta submetida ao Douglas no Portão 3 (a IA não protocola)?

## 6. Integração com o ARPA-C
- **`arpac-triagem` (M0)**: detecta a prisão, aplica `#reu-preso`, grava "ALERTA: RÉU PRESO" em `analise/01-triagem.md` e aciona o modo Urgente.
- **`arpac-prazos-prescricao` (M1, roda primeiro no Urgente)**: controla em `wiki/prazos.md` e `analise/03-prazos-prescricao.md` as 24 horas da custódia; o **D+90** contado da última decisão fundamentada que decretou ou manteve a preventiva, com alertas em D-10 e D-0; os prazos da temporária; os parâmetros de excesso de prazo; e os 5 dias do RHC.
- **`arpac-controller`**: mantém o caso `#reu-preso` no topo de cada coluna de `Shared/painel-casos.md`, registra cada pedido e decisão em `gestao/log.md` e mede o KPI "tempo entre a prisão e o primeiro pedido de liberdade" em `gestao/status.md`.
- **`arpac-estrategista`**: abre em `analise/04-teses.md` um ramo **liberdade** separado e prioritário e define em `analise/06-blueprint.md` a peça urgente e a ordem subsidiária dos pedidos.
- **`arpac-redator`** usa os modelos da seção 4; **`arpac-revisor`** faz o *red team* (como o MP sustentará a ordem pública; como o relator aplicará a Súmula 691 ou o não conhecimento do HC substitutivo).

## 7. Integração NotebookLM
- **GESTÃO DE PROCESSOS**: POP e SLA de réu preso, plantão e escala. **GESTÃO DE ESCRITÓRIOS**: atendimento à família e visita ao cliente preso. Sem MCP, aplicar o fallback da SPEC §6.

## ⚙️ Interface de Expansão
- `scripts/radar_90_dias.py`: varre `casos/*/wiki/prazos.md` e lista os presos com revisão vencida ou a vencer em 10 dias.
- `scripts/calc_temporaria.py`: calcula o termo final da temporária (5 ou 30 dias, prorrogação, dia do cumprimento incluído).
- `scripts/excesso_prazo.py`: gera tabela cronológica dos atos, com dias de atraso e a quem cada atraso é imputável.
- Consulta futura ao BNMP (CNJ) para mandados pendentes e modelos `.docx` das três peças via `/docx`.
