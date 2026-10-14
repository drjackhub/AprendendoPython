---
name: dosimetria-prescricao
description: Cálculo e auditoria da pena e da prescrição penal. (a) Dosimetria trifásica do art. 68 do CP (art. 59, agravantes, atenuantes, majorantes e minorantes), Súmulas 231, 241, 444 e 545 do STJ, reincidência e período depurador, tráfico privilegiado, regime inicial (Súmulas 718 e 719 STF), detração (art. 387, § 2º, CPP), substituição (art. 44), sursis (art. 77) e concurso de crimes, com planilha-modelo. (b) Prescrição punitiva (abstrata, retroativa, superveniente) e executória (arts. 109 a 119 CP), art. 115, marcos do art. 117, suspensões (art. 116; art. 366 CPP), Súmulas 438 e 220 STJ, com CALCULAR_PRESCRICAO() e alerta PRESCRIÇÃO IMINENTE. Ative com /dosimetria ou /prescricao, ou quando o usuário pedir para calcular pena, revisar dosimetria, atacar pena-base ou regime, substituição, sursis, continuidade delitiva, extinção da punibilidade ou prescrição retroativa, intercorrente ou executória. Alimenta o arpac-prazos-prescricao (analise/03-prazos-prescricao.md) e o arpac-estrategista (teses de pena).
---
# ⚖️ Habilidade: Dosimetria da Pena e Prescrição Penal (/dosimetria · /prescricao)

Manual de cálculo do ARPA-C para (a) **reconstruir e auditar a dosimetria** fase a fase, localizando cada fundamentação inidônea, e (b) **auditar a prescrição** em todas as suas espécies, com datas-marco rastreáveis. Na defesa, a dosimetria é a principal tese **subsidiária**; a prescrição é tese **preliminar de ordem pública** (CPP, art. 61: reconhecível de ofício em qualquer fase).

---

## ⚡ Gatilho e Ativação
* **Comandos**: `/dosimetria` (cálculo e auditoria da pena) e `/prescricao` (auditoria de extinção da punibilidade). Ambos carregam esta skill.
* **Modo de Operação**: Calculista forense. Trabalhar **em meses e dias**, mostrar a conta de cada fase, separar **lei** (texto do CP) de **orientação jurisprudencial** (frações usuais) e marcar toda premissa sem fonte como `[PENDENTE: ...]`. Exigir: sentença ou denúncia, FAC/certidões (Súmula 636 STJ: a folha de antecedentes basta para provar maus antecedentes e reincidência), data de nascimento e tempo de prisão provisória.
* **Polo**: na defesa, buscar a menor pena e a extinção da punibilidade; na assistência de acusação, inverter o alerta (prescrição iminente = pedir celeridade).

---
## PARTE A — DOSIMETRIA (CP, art. 68)

### A.1 Primeira fase — pena-base (CP, art. 59)
Vedações transversais: fundamentação genérica ou que serviria a qualquer caso (CF, art. 93, IX; CPP, art. 315, § 2º); uso de **elementar do tipo** ou de circunstância que já qualifica, majora ou agrava o crime (*bis in idem*); inquéritos e ações penais em curso (STJ, Súmula 444); reincidência usada também como circunstância judicial (STJ, Súmula 241).

| Circunstância | O que se avalia | Valoração negativa idônea (exemplo) | Tese defensiva típica |
| :--- | :--- | :--- | :--- |
| Culpabilidade | Grau de reprovabilidade concreta da conduta | Premeditação demonstrada por fato concreto | "Dolo intenso" sem fato; dolo é inerente ao tipo |
| Antecedentes | Condenações definitivas que não geram reincidência | Trânsito em julgado posterior por fato anterior | Súmulas 444 e 241 STJ; condenação antiga e período depurador `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — tema de repercussão geral no STF]` |
| Conduta social | Comportamento familiar, laboral, comunitário | Fato concreto provado nos autos | Não confundir com antecedentes; condição social não é demérito |
| Personalidade | Perfil do agente | Elementos concretos e técnicos | "Personalidade voltada ao crime" sem base `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Motivos | Razão do crime | Motivo excepcional não previsto como qualificadora ou agravante | "Lucro fácil" é inerente ao crime patrimonial e ao tráfico |
| Circunstâncias | *Modus operandi* | Elemento concreto que aumenta a vulnerabilidade da vítima | Repetição de qualificadora ou majorante já usada `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES sobre qualificadora sobejante]` |
| Consequências | Efeitos além do resultado típico | Prejuízo elevado não recuperado; trauma comprovado | Resultado inerente ao tipo (ex.: a morte no homicídio) |
| Comportamento da vítima | Contribuição da vítima | Só neutro ou favorável ao réu | Nunca negativo `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |

* **Frações usuais por circunstância negativa** (orientação jurisprudencial, **não lei**): 1/8 do intervalo entre mínimo e máximo, ou 1/6 da pena mínima. Fração maior exige fundamentação concreta.
* **Lei de Drogas**: natureza e quantidade da droga, personalidade e conduta social preponderam sobre o art. 59 (Lei 11.343/06, art. 42); vedado usar a mesma quantidade na 1ª e na 3ª fase `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.

### A.2 Segunda fase — agravantes e atenuantes (CP, arts. 61 a 67)
* **Agravantes** (arts. 61 e 62) "sempre agravam a pena, quando não constituem ou qualificam o crime" (art. 61, caput).
* **Reincidência** (art. 63): novo crime após trânsito em julgado de condenação anterior. **Período depurador** (art. 64, I): não prevalece a condenação se entre o cumprimento ou extinção da pena e a nova infração decorreram mais de 5 anos, computado o período de prova do sursis ou do livramento, sem revogação; não contam crimes militares próprios e políticos (art. 64, II). Crime praticado após condenação **apenas por contravenção** não gera reincidência (CP, art. 63, c/c LCP, art. 7º).
* **Atenuantes** (arts. 65 e 66): menor de 21 anos na data do fato ou maior de 70 na data da sentença (prova por documento hábil, STJ, Súmula 74); confissão espontânea (art. 65, III, *d*), devida quando utilizada para o convencimento (STJ, Súmula 545), e no tráfico exige admissão da traficância (STJ, Súmula 630); atenuante inominada (art. 66).
* **Concurso** (art. 67): preponderam motivos determinantes, personalidade e reincidência. Compensação entre confissão e reincidência admitida pelo STJ em repetitivo `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.
* **Limites**: atenuante não reduz abaixo do mínimo (STJ, Súmula 231) — tema rediscutido nos Tribunais `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`; manter a tese de superação para prequestionamento. Por simetria, a pena intermediária não ultrapassa o máximo (orientação jurisprudencial). Fração usual: 1/6 (orientação jurisprudencial).

### A.3 Terceira fase — causas de aumento e de diminuição
* Podem levar a pena abaixo do mínimo ou acima do máximo. Incidência sucessiva (em cascata) — orientação jurisprudencial.
* **Concurso de causas da parte especial** (art. 68, p.ú.): o juiz pode aplicar uma só, prevalecendo a que mais aumente ou diminua.
* **Roubo circunstanciado**: o aumento exige fundamentação concreta, não bastando o número de majorantes (STJ, Súmula 443).
* **Diminuições da parte geral**: tentativa, 1/3 a 2/3, inversamente ao *iter* percorrido (art. 14, p.ú.); arrependimento posterior, 1/3 a 2/3 (art. 16); semi-imputabilidade, 1/3 a 2/3 (art. 26, p.ú.); participação de menor importância, 1/6 a 1/3 (art. 29, § 1º).
* **Tráfico privilegiado** (Lei 11.343/06, art. 33, § 4º): redução de 1/6 a 2/3 se o agente for primário, de bons antecedentes, não se dedicar a atividades criminosas nem integrar organização criminosa. Não é hediondo (STF, HC 118.533; LEP, art. 112, § 5º). Inquéritos e ações em curso não afastam o redutor, segundo o STJ `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.

### A.4 Concurso de crimes
| Espécie | Regra | Fundamento |
| :--- | :--- | :--- |
| Material | Soma das penas | CP, art. 69 |
| Formal próprio | Pena mais grave + 1/6 até 1/2 | CP, art. 70, caput, 1ª parte |
| Formal impróprio (desígnios autônomos) | Soma | CP, art. 70, caput, 2ª parte |
| Concurso material benéfico | A exasperação não pode exceder a soma | CP, art. 70, p.ú. |
| Crime continuado | Pena mais grave + 1/6 a 2/3 | CP, art. 71 |
| Continuado específico (dolosos, vítimas diferentes, violência ou grave ameaça) | Até o triplo, observados arts. 70, p.ú., e 75 | CP, art. 71, p.ú. |

Fração pelo número de infrações (orientação jurisprudencial do STJ, `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`): continuidade — 2 crimes 1/6, 3 1/5, 4 1/4, 5 1/3, 6 1/2, 7 ou mais 2/3; concurso formal — de 1/6 (2 crimes) a 1/2 (6 ou mais). Multas aplicadas distinta e integralmente (art. 72). Limite de cumprimento: 40 anos (art. 75).

### A.5 Regime, detração, substituição e sursis
* **Regime** (art. 33, § 2º): pena superior a 8 anos → fechado; não reincidente, superior a 4 e até 8 → semiaberto; não reincidente, até 4 → aberto; critérios do art. 59 (§ 3º). Detenção: semiaberto ou aberto (art. 33, caput). Gravidade abstrata não justifica regime mais severo (STF, Súmula 718); regime mais severo exige motivação idônea (STF, Súmula 719); pena-base no mínimo veda regime mais gravoso pela gravidade abstrata (STJ, Súmula 440); reincidente com pena até 4 anos e circunstâncias favoráveis pode iniciar no semiaberto (STJ, Súmula 269). Regime inicial fechado obrigatório para hediondos é inconstitucional (STF, HC 111.840/ES).
* **Detração** (CPP, art. 387, § 2º): o tempo de prisão provisória é computado para fixar o regime inicial (abater **antes** de escolher o regime). Detração na execução: CP, art. 42, e `/execucao-penal`.
* **Substituição** (art. 44): pena até 4 anos e crime sem violência ou grave ameaça, ou crime culposo; réu não reincidente em crime doloso; art. 59 favorável. Até 1 ano: multa ou uma restritiva; acima de 1 ano: uma restritiva e multa ou duas restritivas (§ 2º). Reincidente: possível se socialmente recomendável e não específica (§ 3º). Vedada em violência doméstica com violência ou grave ameaça (STJ, Súmula 588). Restritiva não pode ser condição do regime aberto (STJ, Súmula 493). No tráfico privilegiado, a vedação legal foi declarada inconstitucional (STF, HC 97.256/RS).
* **Sursis** (art. 77): pena até 2 anos, suspensão por 2 a 4 anos, réu não reincidente em crime doloso, art. 59 favorável e substituição incabível; sursis etário ou humanitário até 4 anos, por 4 a 6 anos (§ 2º).
* **Justiça negocial**: pena mínima inferior a 4 anos, considerando majorantes e minorantes (CPP, art. 28-A, § 1º), ou mínima até 1 ano (Lei 9.099/95, art. 89; STF, Súmula 723 para continuidade) → acionar `/negocial`.

### A.6 Planilha-modelo (roubo com concurso de pessoas — CP, art. 157, § 2º, II; 4 a 10 anos)
| Fase | Operação | Fundamento | Resultado |
| :--- | :--- | :--- | :--- |
| Base de cálculo | Intervalo 6 anos = 72 meses; 1/8 = 9 meses (ou 1/6 do mínimo = 8 meses) | Orientação jurisprudencial | — |
| 1ª fase | 1 circunstância negativa idônea (consequências: prejuízo concreto não recuperado) | CP, art. 59 | 4a 9m (57 m) |
| 2ª fase | Confissão −1/6 → 47,5 m, limitada ao mínimo | CP, art. 65, III, *d*; Súm. 545 e 231 STJ | 4a 0m (48 m) |
| 3ª fase | Concurso de pessoas +1/3 (fração mínima; acima exige fundamento concreto) | CP, art. 157, § 2º, II; Súm. 443 STJ | **5a 4m (64 m)** |
| Multa | Mesmo raciocínio trifásico; dia-multa mínimo de 1/30 do salário mínimo | CP, arts. 49, § 1º, e 60 | [calcular] |
| Detração | 8 meses de preventiva → 4a 8m para fins de regime | CPP, art. 387, § 2º | — |
| Regime | Primário, acima de 4 e até 8 anos | CP, art. 33, § 2º, *b* | Semiaberto |
| Substituição / sursis | Grave ameaça / pena acima de 2 anos | CP, arts. 44, I, e 77 | Incabíveis |
| Prescrição (pena concreta) | 5a 4m → 12 anos | CP, art. 109, III | → Parte B |

Contraste: tráfico privilegiado com pena-base e intermediária no mínimo (5 anos) e redutor de 2/3 → 1a 8m, regime aberto, duas restritivas de direitos, prescrição em 4 anos (art. 109, V).

---
## PARTE B — PRESCRIÇÃO (CP, arts. 109 a 119)

### B.1 Tabela do art. 109 (com o art. 115)
| Pena (máxima cominada ou aplicada) | Prazo | Metade (art. 115) |
| :--- | :--- | :--- |
| Superior a 12 anos | 20 anos | 10 anos |
| Superior a 8 e até 12 | 16 anos | 8 anos |
| Superior a 4 e até 8 | 12 anos | 6 anos |
| Superior a 2 e até 4 | 8 anos | 4 anos |
| Igual a 1 ou superior, até 2 | 4 anos | 2 anos |
| Inferior a 1 ano | 3 anos (Lei 12.234/2010; para fatos anteriores, 2 anos) | 1a 6m |

Restritivas de direitos: mesmos prazos (art. 109, p.ú.). Multa: 2 anos quando única cominada ou aplicada; no prazo da pena privativa quando alternativa ou cumulativa (art. 114). Art. 115: prazos reduzidos de metade se o agente era **menor de 21 anos ao tempo do crime** ou **maior de 70 na data da sentença**. Contagem pelo art. 10 do CP (inclui o dia do começo; calendário comum): prazo de 4 anos iniciado em 10/03/2021 termina em 09/03/2025. A prescrição **não se suspende** no período do art. 798-A do CPP.

### B.2 Espécies
| Espécie | Pena de referência | Intervalos | Requisito | Fundamento |
| :--- | :--- | :--- | :--- | :--- |
| PPP em abstrato | Máximo cominado (majorante pelo máximo, minorante pelo mínimo); sem agravantes, atenuantes ou reincidência | Termo do art. 111 → marcos do art. 117 → trânsito | — | Arts. 109, 111, 117; Súm. 220 STJ |
| PPP retroativa | Pena aplicada | Da sentença para trás, **nunca com termo anterior à denúncia ou queixa** | Trânsito para a acusação ou improvimento do seu recurso | Art. 110, § 1º (Lei 12.234/2010); Súm. 146 STF |
| PPP superveniente (intercorrente) | Pena aplicada | Da sentença ou acórdão condenatório recorrível ao trânsito para ambas as partes | Idem | Art. 110, § 1º |
| PPE | Pena aplicada (ou restante, se evasão ou revogação — art. 113), +1/3 se reincidente | Termo do art. 112; interrupções do art. 117, V e VI | Trânsito em julgado | Arts. 110, caput, 112, 113 |

* **Termo inicial da PPP** (art. 111): consumação; na tentativa, cessação da atividade; no permanente, cessação da permanência; bigamia e falsificação de registro civil, data do conhecimento; crimes contra a dignidade sexual ou com violência contra criança e adolescente, data em que a vítima completar 18 anos, salvo ação já proposta (inciso V) `[VERIFICAR REDAÇÃO VIGENTE]`.
* **Lei 12.234/2010** (mais gravosa, irretroativa): para fatos anteriores à sua vigência (maio de 2010) `[VERIFICAR data exata]`, admite-se a retroativa entre fato e recebimento e o prazo de 2 anos do antigo inciso VI.
* **Termo inicial da PPE** (art. 112, I): o STF, em repercussão geral, reinterpretou o dispositivo para exigir trânsito para ambas as partes, com modulação `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`.

### B.3 Causas interruptivas (art. 117) e suspensivas
* **Interrupção** (art. 117): I – recebimento da denúncia ou queixa (o acórdão que provê recurso contra a rejeição vale como recebimento, salvo nula a decisão de primeiro grau — STF, Súmula 709); II – pronúncia (interrompe ainda que o Júri desclassifique — STJ, Súmula 191); III – decisão confirmatória da pronúncia; IV – publicação da sentença ou acórdão condenatórios recorríveis (sentença publicada em mão do escrivão — CPP, art. 389; acórdão confirmatório também interrompe — STF, HC 176.473/RR, Plenário `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`, conferir via `/jurisprudencia`); V – início ou continuação do cumprimento da pena; VI – reincidência. Efeitos: salvo V e VI, a interrupção alcança todos os autores e os crimes conexos do mesmo processo (§ 1º); salvo V, o prazo recomeça integralmente do dia da interrupção (§ 2º).
* **Suspensão** (art. 116, redação da Lei 13.964/2019 `[VERIFICAR REDAÇÃO VIGENTE]`): I – questão prejudicial em outro processo; II – cumprimento de pena no exterior; III – pendência de embargos de declaração ou de recursos aos Tribunais Superiores, **quando inadmissíveis**; IV – enquanto não cumprido ou não rescindido o ANPP. Após o trânsito, não corre enquanto o condenado estiver preso por outro motivo (p.ú.).
* **Outras**: citação por edital sem comparecimento nem advogado (CPP, art. 366), pelo máximo do prazo regulado pela pena máxima cominada (STJ, Súmula 415); carta rogatória (CPP, art. 368); sursis processual (Lei 9.099/95, art. 89, § 6º); colaboração premiada (Lei 12.850/13, art. 4º, § 3º) e parcelamento tributário `[VERIFICAR REDAÇÃO VIGENTE]`.

### B.4 Vedações e regras de fechamento
Prescrição em perspectiva ou virtual é inadmissível (STJ, Súmula 438) — usar a projeção só como dado estratégico interno, nunca como pedido. Reincidência não influi na PPP (STJ, Súmula 220). No concurso, cada crime isoladamente (CP, art. 119), e no continuado sem o acréscimo da continuação (STF, Súmula 497). Imprescritíveis: racismo (CF, art. 5º, XLII) e ação de grupos armados contra a ordem constitucional e o Estado Democrático (CF, art. 5º, XLIV); injúria racial (Lei 7.716/89, art. 2º-A, incluído pela Lei 14.532/2023) `[VERIFICAR REDAÇÃO VIGENTE]`. Medidas socioeducativas prescrevem (STJ, Súmula 338).

### B.5 Algoritmo `CALCULAR_PRESCRICAO()`
```
ENTRADA (wiki/cronologia.md, wiki/ficha.md, analise/02-decomposicao.md):
  crimes[] {tipo, pena_max, majorantes, minorantes, pena_concreta?}; D_nasc; reincidente_na_sentenca
  D_fato (art. 111) | D_rec (decisão de recebimento; Súm. 709 STF) | D_pron | D_conf_pron
  D_cond (publicação da sentença/acórdão condenatório recorrível) | D_tj_acus | D_tj_ambos
  suspensoes[] {inicio, fim, causa} | hoje
1. TRIAGEM: crime imprescritível (CF, art. 5º, XLII/XLIV)? → registrar e FIM.
2. PARA CADA crime isoladamente (art. 119; Súm. 497 STF).
3. FATOR = 1/2 se idade(D_fato) < 21 ou idade(data da sentença) > 70 (art. 115; Súm. 74 STJ); senão 1.
4. ABSTRATA: pena_ref = pena_max × maior majorante × menor minorante → prazo = TAB109(pena_ref) × FATOR
   (fato anterior à Lei 12.234/2010 → tabela antiga para pena < 1 ano).
5. INTERVALOS: [D_fato→D_rec], [D_rec→D_pron], [D_pron→D_conf_pron], [→D_cond], [D_cond→acórdão], [último marco→hoje].
   duracao = fim − inicio − Σ(dias suspensos; art. 366 limitado pela Súm. 415 STJ)
   data_limite = inicio + prazo − 1 dia (art. 10 CP) + dias suspensos
   duracao ≥ prazo → ⚫ PRESCRIÇÃO CONSUMADA (abstrata).
6. CONCRETA (pena aplicada + trânsito para acusação ou recurso dela improvido): prazo_c = TAB109(pena_concreta) × FATOR
   RETROATIVA: intervalos a partir de D_rec (D_fato→D_rec só para fato anterior à Lei 12.234/2010).
   SUPERVENIENTE: D_cond → hoje (ou D_tj_ambos).
7. EXECUTÓRIA (após trânsito): prazo_e = TAB109(pena aplicada ou restante, art. 113) × (4/3 se reincidente) × FATOR;
   termo do art. 112 (ver reinterpretação do STF); interrupções do art. 117, V e VI.
8. NUNCA requerer prescrição em perspectiva (Súm. 438 STJ).
9. STATUS: ⚫ consumada | 🔴 IMINENTE (< 6 meses) | 🟡 6 a 18 meses | 🟢 > 18 meses.
SAÍDA: Parte II de analise/03-prazos-prescricao.md + alerta ao orquestrador.
```
**Exemplo (abstrata, art. 115)**: furto simples (CP, art. 155, caput: 1 a 4 anos), agente com 19 anos no fato → 8 anos (art. 109, IV) ÷ 2 = 4 anos. Fato em 15/01/2021; data-limite 14/01/2025; denúncia recebida em 20/02/2025 → ⚫ prescrição consumada antes do recebimento → extinção da punibilidade (CP, art. 107, IV) já na resposta à acusação (CPP, art. 397, IV).
**Exemplo (retroativa)**: mesmo crime, agente adulto, pena aplicada de 1 ano, sem recurso do MP → 4 anos (art. 109, V). Recebimento em 10/03/2021; data-limite 09/03/2025; sentença publicada em 20/05/2025 → ⚫ prescrição retroativa.

**Modelo da Parte II de `analise/03-prazos-prescricao.md`** (§5 e linhas de prescrição do §6; títulos e colunas idênticos aos de `caso-modelo/analise/03-prazos-prescricao.md`, que prevalece; exemplo com `data_de_referencia` 14/10/2026):
```markdown
## 5 Prescrição (Parte II — /prescricao)
### 5.1 Dados de base
| Dado | Valor | Fonte (id/fl.) | Confiança |
|---|---|---|---|
| Data do fato / termo inicial (art. 111 CP) | | | |
| Data de nascimento do réu | | | |
| Menor de 21 na data do fato ou maior de 70 na data da sentença (art. 115 CP) | Sim (19 anos no fato) | | |
| Reincidência reconhecida (art. 110, caput, CP — só na executória; STJ, Súmula 220) | | | |
| Pena máxima em abstrato (com majorantes no máximo e minorantes no mínimo) | 4 anos | | |
| Pena em concreto (se houver sentença) e trânsito para a acusação | | | |
| Concurso de crimes (art. 119 CP) / crime continuado (STF, Súmula 497) | | | |
### 5.2 Quadro da prescrição por crime e espécie
| Crime | Pena de referência | Espécie (abstrata / retroativa / superveniente / executória) | Prazo (art. 109) | Art. 115 | Prazo final | Intervalo crítico | Data-limite | Status (🟢 / 🟡 / 🔴 IMINENTE / ⚫ CONSUMADA) |
|---|---|---|---|---|---|---|---|---|
| Furto simples (CP, art. 155, caput) | 4 anos (máx.) | abstrata | 8 anos (IV) | Sim | 4 anos | Recebimento 10/03/2023 → sentença [PENDENTE] | 09/03/2027 | 🔴 IMINENTE |
### 5.3 Marcos e intervalos
| Intervalo | De | Até | Duração | Suspensões | Prazo | Prescreveu? | Fonte (id/fl.) | Confiança |
|---|---|---|---|---|---|---|---|---|
### 5.4 Conclusão e data-limite crítica
<prosa curta: consumada? data mais próxima de consumação; STJ, Súmula 438>
## 6 Alertas
| Alerta | Gatilho | Data-limite | Ação requerida |
|---|---|---|---|
| PRESCRIÇÃO IMINENTE | consumação em menos de 6 meses (restam 4 meses e 23 dias) | 09/03/2027 | monitorar os marcos do art. 117 e, consumada, requerer a extinção da punibilidade (CP, art. 107, IV); no polo acusatório, pedir celeridade |
```

---
## 🗂️ Integração ARPA-C (arquivos e agentes)
* **`/prescricao`** → agente `arpac-prazos-prescricao` (M1): lê `wiki/cronologia.md` e `wiki/ficha.md` (nascimento, FAC, prisões); escreve a **Parte II** de `analise/03-prazos-prescricao.md` (§5 e as linhas de prescrição do §6; a Parte I, §1 a §4, é de `/prazos-penais`) e o resumo de `wiki/prazos.md` §3. Alerta `PRESCRIÇÃO IMINENTE` ou `PRESCRIÇÃO CONSUMADA` no resumo ao orquestrador; o `arpac-controller` aplica a etiqueta `#prescricao-risco` em `Shared/painel-casos.md`.
* **`/dosimetria`** → `arpac-estrategista` (teses subsidiárias de pena em `analise/04-teses.md` e tópico de dosimetria em `analise/06-blueprint.md`, a partir dos fatos de pena de `analise/02-decomposicao.md`); `arpac-redator` (capítulo da dosimetria em memoriais, apelação e revisão criminal, sem bullets); `arpac-revisor` (recalcula a planilha e confere súmulas via CoVe em `analise/07-revisao.md`).
* **Skills conexas**: `/recursos-penais` (apelação da dosimetria; recurso exclusivo da defesa não agrava a pena — CPP, art. 617), `/execucao-penal` (detração, unificação, PPE em curso), `/negocial`, `/lei-de-drogas`, `/jurisprudencia`.

## ✅ Checklist Obrigatório
- [ ] Cada circunstância judicial negativa tem fato concreto, não é elementar nem repete qualificadora, majorante ou agravante?
- [ ] Inquéritos e ações em curso foram excluídos (Súm. 444 STJ) e a reincidência não foi usada duas vezes (Súm. 241 STJ)?
- [ ] O período depurador (art. 64, I) e a LCP, art. 7º, foram conferidos na FAC?
- [ ] Confissão (Súm. 545/630 STJ), menoridade relativa ou senilidade (art. 65, I) foram reconhecidas?
- [ ] A pena intermediária respeitou o mínimo (Súm. 231 STJ, com ressalva de superação) e a 3ª fase tem fundamento concreto (Súm. 443 STJ)?
- [ ] Concurso de crimes classificado (arts. 69, 70, 71) com fração proporcional ao número de infrações?
- [ ] Detração aplicada antes da escolha do regime (CPP, art. 387, § 2º) e Súmulas 718/719 STF e 440/269 STJ verificadas?
- [ ] Substituição (art. 44) e sursis (art. 77) analisados expressamente?
- [ ] Prescrição calculada por crime isolado (art. 119), em abstrato, retroativa, superveniente e executória, com art. 115?
- [ ] Todas as datas-marco têm fonte (id/fl.) e as suspensões (art. 116, art. 366, ANPP, art. 89, § 6º) foram descontadas?
- [ ] Nenhum pedido se funda em prescrição em perspectiva (Súm. 438 STJ)?
- [ ] Alerta 🔴/⚫ enviado ao orquestrador e etiqueta `#prescricao-risco` solicitada ao controller?

## ⚙️ Interface de Expansão (Notebooks Futuros)
> [!IMPORTANT]
> Placeholder para o script `prescricao.mjs`, que implementará `CALCULAR_PRESCRICAO()` com aritmética de datas pelo art. 10 do CP, tabela do art. 109 versionada (pré e pós-Lei 12.234/2010), suspensões com início e fim, leitura de `wiki/cronologia.md` e geração automática da Parte II de `analise/03-prazos-prescricao.md` com alertas. Previsto também `dosimetria.mjs`: planilha trifásica em meses e dias, frações configuráveis (1/8 do intervalo ou 1/6 do mínimo), simulação de cenários defensivos (decote de circunstância, redutor máximo, compensação) e exportação da tabela para o capítulo da dosimetria via `/docx`.
