---
name: prazos-penais
description: Manual lógico de auditoria e contagem de prazos processuais penais (versão criminal do /prazos cível). Aplica os prazos contínuos e peremptórios do art. 798 do CPP (exclusão do dia do começo, prorrogação em domingo e feriado), as Súmulas 310 e 710 do STF, a suspensão de 20 de dezembro a 20 de janeiro do art. 798-A do CPP e suas exceções (réu preso, Maria da Penha, medidas urgentes), a intimação por DJe, portal eletrônico e intimação pessoal do MP, da Defensoria Pública (prazo em dobro, LC 80/94) e do defensor dativo, e a tabela de prazos de inquérito, denúncia, resposta à acusação, defesa prévia da Lei de Drogas, memoriais, RESE, apelação, embargos de declaração, embargos infringentes, carta testemunhável, REsp, RE, agravos, recurso ordinário em HC, JECRIM, agravo em execução (LEP) e ECA. Afasta expressamente o art. 219 do CPC (dias úteis) no processo penal. Ative com /prazos-penais ou quando o usuário perguntar até quando pode recorrer, calcular tempestividade criminal, prazo de resposta à acusação, prazo da apelação criminal, perdeu o prazo, intimação na sexta-feira, recesso de fim de ano no crime, prazo do réu preso, excesso de prazo do inquérito ou revisão nonagesimal da preventiva. Alimenta o agente arpac-prazos-prescricao (wiki/prazos.md e alerta PRAZO FATAL).
---
# 📅 Habilidade: Auditoria e Contagem de Prazos Processuais Penais (/prazos-penais)

Manual lógico profundo do ARPA-C para cálculo do termo final (*dies ad quem*) de manifestações e recursos criminais. No crime, perder o prazo pode significar trânsito em julgado de condenação ou prisão mantida: a postura é de **compliance hipervigilante**, com dupla conferência e data de segurança interna.

---

## ⚡ Gatilho e Ativação
* **Comando**: `/prazos-penais`
* **Descrição**: Calcula termo inicial e final de prazos penais, audita o ato de comunicação, identifica suspensões e prorrogações e grava o painel de prazos do caso com semáforo de risco.
* **Modo de Operação**: Exigir a **data exata e o meio** da intimação (certidão, DJe, aba de expedientes do PJe), confirmar se há **réu preso** e se atua a **Defensoria**, consultar `Shared/calendario.md` (feriados e suspensões do TJPE e da comarca). Sem esses dados, calcular o **cenário mais conservador** e marcar `[PENDENTE: ...]`.

> [!CAUTION]
> **O art. 219 do CPC (contagem em dias úteis) NÃO se aplica ao processo penal.** Há regra própria e expressa no art. 798 do CPP, o que afasta a aplicação subsidiária do CPC (a analogia do art. 3º do CPP pressupõe lacuna). É o entendimento firme do STJ `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES para o paradigma]`. A skill cível `/prazos` jamais deve ser usada em caso criminal.

---

## 📐 1. Regras de Contagem (CPP, art. 798)
1. **Contínuos e peremptórios** (caput): os prazos correm em cartório, são contínuos e peremptórios e não se interrompem por férias, domingo ou feriado. Sábados, domingos e feriados **no curso** do prazo são contados.
2. **Exclusão do dia do começo e inclusão do vencimento** (§ 1º).
3. **Prorrogação** (§ 3º): o prazo que terminar em domingo ou feriado prorroga-se até o dia útil imediato. Sábado sem expediente forense recebe o mesmo tratamento na prática forense (início e vencimento) `[VERIFICAR — Lei 1.408/51, art. 3º, e jurisprudência]`.
4. **Início em dia útil** (STF, Súmula 310): intimação na sexta-feira (ou publicação com efeito de intimação nesse dia) faz o prazo começar na segunda-feira imediata, salvo se não houver expediente, caso em que começa no primeiro dia útil seguinte.
5. **Termo inicial pela intimação** (STF, Súmula 710): no processo penal, contam-se os prazos da data da intimação, e **não** da juntada aos autos do mandado ou da carta precatória ou de ordem. Erro clássico de quem vem do cível.
6. **Obstáculos** (§ 4º): não correm os prazos havendo impedimento do juiz, força maior ou obstáculo judicial oposto pela parte contrária (documentar e requerer devolução do prazo).
7. **Termo *a quo*** (§ 5º): salvo casos expressos, os prazos correm da intimação, da audiência ou sessão em que proferida a decisão, se presente a parte, ou do dia em que a parte manifestar ciência inequívoca.
8. **Prazo material × processual**: decadência de queixa e representação (CPP, art. 38; CP, art. 103), prescrição e duração de prisões seguem o **art. 10 do CP** (inclui o dia do começo, calendário comum, sem prorrogação e sem suspensão de fim de ano). Classificar a natureza **antes** de contar.
9. **Prazos em horas** (carta testemunhável, nota de culpa, custódia): contagem minuto a minuto, por aplicação subsidiária do art. 132, § 4º, do Código Civil `[VERIFICAR]`.
10. **Tempestividade pelo protocolo**: a apelação entregue no prazo não fica prejudicada pelo despacho tardio (STF, Súmula 428) nem pela demora de juntada por culpa do cartório (STF, Súmula 320). Petição eletrônica é tempestiva se transmitida até as 24h do último dia (Lei 11.419/06, art. 3º, p.ú.); indisponibilidade do sistema prorroga para o primeiro dia útil seguinte à solução (art. 10, § 2º).

---

## 🎄 2. Suspensão de Fim de Ano (CPP, art. 798-A, incluído pela Lei 14.365/2022)
* **Regra**: suspende-se o curso do prazo processual de **20 de dezembro a 20 de janeiro, inclusive**. Suspensão (não interrupção): o prazo retoma em 21/01 pelo **saldo** remanescente.
* **Exceções** (o prazo corre normalmente): (I) processos com **réus presos**, nos processos vinculados a essas prisões; (II) procedimentos regidos pela **Lei 11.340/06 (Maria da Penha)**; (III) **medidas urgentes**, mediante despacho fundamentado do juízo. No período, vedam-se audiências e sessões de julgamento, salvo nessas hipóteses `[VERIFICAR REDAÇÃO VIGENTE para o rol exato]`.
* **Prescrição iminente** não consta, em nosso registro, como exceção autônoma; pode justificar o reconhecimento de urgência (inciso III) `[VERIFICAR REDAÇÃO VIGENTE]`. A **prescrição continua correndo** na suspensão (prazo material, art. 10 CP): alertar `/prescricao`.
* **Intimação ocorrida durante a suspensão**: tratar o primeiro dia útil após 20/01 como início da contagem `[VERIFICAR]`.
* **Recesso forense** (20/12 a 06/01) em processo de réu preso: se o termo final cair em dia sem expediente, a prorrogação depende do ato normativo do tribunal `[VERIFICAR calendário TJPE]`. **Regra de segurança: protocolar antes de 20/12.**

---

## 📨 3. Atos de Comunicação e Sujeitos com Regime Próprio
| Situação | Regra | Fundamento |
| :--- | :--- | :--- |
| Advogado constituído | Publicação no órgão oficial, com o nome do acusado, sob pena de nulidade | CPP, art. 370, § 1º |
| DJe | Disponibilização em D; publicação no primeiro dia útil seguinte (D+1); prazo inicia no primeiro dia útil após a publicação | Lei 11.419/06, art. 4º, §§ 3º e 4º |
| Portal eletrônico (PJe) | Intimação na consulta ou, tacitamente, após 10 dias corridos do envio | Lei 11.419/06, art. 5º, § 3º |
| MP e defensor nomeado (dativo) | Intimação pessoal | CPP, art. 370, § 4º |
| MP — termo inicial | Conta-se da entrada dos autos no órgão, não do "ciente" lançado; sem prazo em dobro no processo penal | `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Defensoria Pública | Intimação pessoal e **prazo em dobro** em qualquer processo e grau | LC 80/94, arts. 44, I; 89, I; 128, I |
| Defensor dativo | Intimação pessoal, mas sem prazo em dobro | `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Litisconsortes com advogados distintos | Art. 229 do CPC não se aplica ao processo penal | `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Sentença condenatória | Intimar réu (pessoalmente, se preso — art. 392, I) **e** defensor; o prazo flui da última intimação | CPP, art. 392 `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES quanto ao termo]` |
| Renúncia do réu × defensor | Renúncia do réu sem assistência técnica não impede apelação do defensor | STF, Súmula 705 |

---

## 📋 4. Tabela de Prazos Principais
| Ato | Prazo | Fundamento | Observação tática |
| :--- | :--- | :--- | :--- |
| Conclusão do IP — preso / solto | 10 dias (da execução da prisão) / 30 dias | CPP, art. 10 | Excesso com réu preso → relaxamento (CF, art. 5º, LXV) via `/liberdade` |
| IP — Lei de Drogas | 30 dias preso / 90 solto, duplicáveis | Lei 11.343/06, art. 51 e p.ú. | Duplicação exige decisão fundamentada |
| IP — Justiça Federal (preso) | 15 dias, prorrogáveis por mais 15 | Lei 5.010/66, art. 66 | — |
| Prorrogação do IP de preso (juiz das garantias) | Até 15 dias | CPP, art. 3º-B, § 2º | `[VERIFICAR REDAÇÃO VIGENTE — interpretação do STF no julgamento do juiz das garantias]` |
| Denúncia — preso / solto | 5 dias / 15 dias do recebimento dos autos pelo MP | CPP, art. 46 | Inércia → queixa subsidiária em 6 meses (CPP, arts. 29 e 38) |
| Denúncia — Lei de Drogas | 10 dias | Lei 11.343/06, art. 54 | — |
| Queixa / representação | 6 meses do conhecimento da autoria | CPP, art. 38; CP, art. 103 | **Decadencial**: art. 10 CP, sem prorrogação |
| Comunicação do flagrante e nota de culpa | 24 horas | CPP, art. 306, §§ 1º e 2º | — |
| Audiência de custódia | Até 24 horas da prisão | CPP, art. 310 | — |
| Revisão da preventiva | A cada 90 dias, de ofício | CPP, art. 316, p.ú. | STF: inobservância não gera soltura automática; provocar o juízo `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Prisão temporária | 5 + 5 dias; hediondos 30 + 30 | Lei 7.960/89, art. 2º; Lei 8.072/90, art. 2º, § 4º | Prazo material: soltura automática ao fim |
| Resposta à acusação (ordinário/sumário) | 10 dias da citação (edital: do comparecimento) | CPP, arts. 396 e 396-A | Arrolar testemunhas aqui, sob pena de preclusão |
| Resposta à acusação — Júri | 10 dias | CPP, art. 406 | Até 8 testemunhas |
| Defesa prévia — Lei de Drogas | 10 dias da notificação (antes do recebimento) | Lei 11.343/06, art. 55 | Até 5 testemunhas |
| Resposta preliminar — funcionário público | 15 dias | CPP, art. 514 | Dispensada se a ação vier instruída por IP (STJ, Súmula 330) |
| Resposta — ação penal originária | 15 dias | Lei 8.038/90, art. 4º | — |
| Memoriais | 5 dias, sucessivos | CPP, arts. 403, § 3º, e 404, p.ú. | Oral: 20 min + 10 (art. 403) |
| Rol, documentos e diligências para o plenário | 5 dias | CPP, art. 422 | Até 5 testemunhas |
| Documento ou objeto em plenário | Antecedência mínima de **3 dias úteis** | CPP, art. 479 | Exceção expressa: contar em dias úteis |
| Embargos de declaração — sentença / acórdão | 2 dias | CPP, arts. 382 e 619 | Interrupção por construção jurisprudencial `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| RESE | 5 dias (20 dias no inciso XIV) | CPP, art. 586 e p.ú. | Postular retratação (art. 589) |
| Razões e contrarrazões do RESE | 2 dias cada | CPP, art. 588 | — |
| Apelação | 5 dias | CPP, art. 593 | Razões no tribunal (art. 600, § 4º) |
| Apelação do ofendido não habilitado | 15 dias do fim do prazo do MP | CPP, art. 598, p.ú.; STF, Súmula 448 | — |
| Razões e contrarrazões de apelação | 8 dias (3 na contravenção) | CPP, art. 600 | Atraso nas razões é tido por irregularidade `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]` |
| Embargos infringentes e de nulidade | 10 dias da publicação do acórdão | CPP, art. 609, p.ú. | Só decisão não unânime desfavorável ao réu |
| Carta testemunhável | 48 horas do despacho denegatório | CPP, art. 640 | Contagem em horas |
| REsp e RE | 15 dias **corridos** | CPC, art. 1.003, § 5º, c/c CPP, art. 798 (art. 26 da Lei 8.038/90 revogado pelo CPC/2015) | `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES — contagem corrida]`; integrar `/recurso-especial` e `/recurso-extraordinario` |
| AREsp / ARE | 15 dias corridos (posição pós-CPC/2015); a Súmula 699 STF (5 dias) teria sido superada | CPC, arts. 1.003, § 5º, e 1.042 | `[REQUER CONSULTA AO SISTEMA DE PRECEDENTES]`. **Regra de segurança: protocolar até o 5º dia** |
| Agravo regimental/interno em matéria penal (STJ/STF) | 5 dias | Lei 8.038/90, art. 39 | `[VERIFICAR REDAÇÃO VIGENTE e regimentos internos]` |
| Embargos de declaração no STJ/STF | Conforme regimento | RISTJ / RISTF | `[VERIFICAR REDAÇÃO VIGENTE]` |
| Recurso ordinário em HC — STJ / STF | 5 dias, com razões | Lei 8.038/90, art. 30; STF, Súmula 319 | — |
| JECRIM — apelação (razões na interposição) e contrarrazões | 10 dias da ciência | Lei 9.099/95, art. 82, §§ 1º e 2º | Razões **junto** com a interposição |
| JECRIM — embargos de declaração | 5 dias da ciência; interrompem | Lei 9.099/95, art. 83, §§ 1º e 2º | Art. 12-A (dias úteis) restrito aos Juizados Cíveis `[VERIFICAR]` |
| Agravo em execução | 5 dias | LEP, art. 197; STF, Súmula 700 | Sem efeito suspensivo: integrar `/execucao-penal` |
| ECA — recursos (salvo embargos de declaração) | 10 dias | ECA, art. 198, II | Contagem em **dias corridos**, sem dobro para MP e Defensoria (art. 152, § 2º) `[VERIFICAR REDAÇÃO VIGENTE]` |
| ECA — internação provisória | Máximo de 45 dias, improrrogável | ECA, arts. 108 e 183 | Excesso → HC |
| Revisão criminal e HC | Sem prazo | CPP, art. 622 | — |

---

## 🧮 5. Algoritmo `CONTAR_PRAZO_PENAL()`
```
ENTRADA: ato, meio_comunicacao, data_comunicacao, prazo, unidade (dias|horas),
         reu_preso, defensoria, rito (comum|juri|drogas|jecrim|eca|lep), calendario (Shared/calendario.md)
1. NATUREZA: material (decadência, prescrição, prisão) → art. 10 CP e FIM. Processual → seguir.
2. DIES A QUO: pessoal = data da ciência certificada (Súm. 710, não a juntada);
   DJe = 1º dia útil após a disponibilização; portal = consulta ou 10º dia corrido do envio;
   audiência/sessão = data do ato (art. 798, § 5º, b).
3. DOBRA: defensoria = SIM → prazo × 2 (LC 80/94). rito = eca → sem dobra.
4. DIA 1: primeiro dia útil seguinte ao dies a quo (art. 798, § 1º; Súm. 310 STF).
5. CONTAGEM: dias corridos (sábados, domingos e feriados intermediários contam).
6. SUSPENSÃO: se atravessar 20/12–20/01 e não houver exceção do art. 798-A → congelar e retomar em 21/01 pelo saldo.
7. VENCIMENTO: se cair em sábado, domingo, feriado (nacional, PE, Timbaúba, portaria TJPE) ou indisponibilidade do PJe → 1º dia útil seguinte (art. 798, § 3º).
8. SEGURANÇA: data_interna = termo final − 1 dia útil (réu preso: − 2 dias úteis).
9. STATUS: dias_restantes = termo final − hoje → 🟢 > 5 | 🟡 3 a 5 | 🔴 ≤ 2, vencido ou réu preso com ≤ 3.
SAÍDA: linha em wiki/prazos.md + alerta PRAZO FATAL se 🔴.
```
**Exemplo 1 (Súmula 310)**: defensor intimado pessoalmente da sentença na sexta, 16/10/2026. Apelação (5 dias): dia 1 = segunda 19/10; termo final = **sexta 23/10/2026**.
**Exemplo 2 (vencimento no sábado)**: razões de RESE (2 dias) a partir de interposição na quinta 05/11/2026: dia 1 = 06/11 (sexta), dia 2 = 07/11 (sábado) → prorroga para **segunda 09/11/2026**.
**Exemplo 3 (art. 798-A)**: intimação da sentença em 17/12/2026 (quinta), réu solto: dia 1 = 18/12, dia 2 = 19/12, suspensão, dia 3 = 21/01/2027, dia 4 = 22/01, dia 5 = 23/01 (sábado) → **segunda 25/01/2027**. Com **réu preso**, não há suspensão: termo final em **terça 22/12/2026** (verificar recesso do TJPE).

---

## 🔬 6. Protocolo de Verificação (Checklist Obrigatório)
- [ ] **Ato de comunicação** identificado (citação, intimação pessoal, DJe, portal, audiência, ciência inequívoca) e comprovado por certidão ou aba de expedientes?
- [ ] **Data de disponibilização × publicação** separadas no DJe; no portal, verificada a data da consulta ou da intimação tácita?
- [ ] Termo inicial fixado pela **intimação**, e não pela juntada do mandado ou da precatória (Súmula 710 STF)?
- [ ] Intimação em sexta-feira ou véspera de feriado tratada pela **Súmula 310 STF**?
- [ ] **Feriados e suspensões locais** (PE, Timbaúba, portarias do TJPE, indisponibilidade do PJe) conferidos em `Shared/calendario.md`? Sem registro → `[PENDENTE]`. Exemplo a confirmar: Data Magna de Pernambuco, 6 de março `[VERIFICAR]`.
- [ ] Em recurso aos Tribunais Superiores, juntada a **prova do feriado local** no ato de interposição (CPC, art. 1.003, § 6º, com a redação da Lei 14.939/2024) `[VERIFICAR REDAÇÃO VIGENTE]`?
- [ ] Há **réu preso**? (exceção do art. 798-A, prioridade `#reu-preso`, data de segurança reforçada)
- [ ] Atua a **Defensoria Pública** (prazo em dobro e intimação pessoal) ou defensor dativo (sem dobro)?
- [ ] Na sentença, **réu e defensor** foram intimados? Qual a última intimação?
- [ ] O prazo é **processual** (art. 798 CPP) ou **material** (art. 10 CP)?
- [ ] O rito tem regra especial (JECRIM, Lei de Drogas, Júri, ECA, LEP, ação originária)?
- [ ] Período de **20/12 a 20/01** atravessado? Incide alguma exceção do art. 798-A?
- [ ] A prescrição foi auditada em paralelo (`/prescricao`)?

---

## 🗂️ 7. Integração ARPA-C (arquivos e agentes)
* **Agente executor**: `arpac-prazos-prescricao` (M1, em paralelo com `arpac-auditor-autos`; no modo **Urgente**, roda **primeiro**). Lê `wiki/cronologia.md`, `wiki/ficha.md` e `Shared/calendario.md`; escreve `wiki/prazos.md` e a **Parte I — Prazos** de `analise/03-prazos-prescricao.md` (a Parte II é da skill `/prescricao`).
* **Consumidores**: orquestrador `/arpa-criminal` (define o modo de execução), `arpac-controller` (etiqueta `#prazo-fatal` e coluna do Kanban em `Shared/painel-casos.md`), `arpac-redator` (data-limite de entrega da minuta). A IA **nunca protocola** (Portão 3).

**Modelo de `wiki/prazos.md`**:
```markdown
# Prazos — <CNJ/apelido> (auditado em AAAA-MM-DD por arpac-prazos-prescricao)
> 🔴 PRAZO FATAL: Apelação vence em 23/10/2026 (sexta) — restam 2 dias — RÉU PRESO — data interna: 21/10/2026
| Prazo | Fundamento | Termo inicial | Termo final | Dias restantes | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Apelação (interposição) | CPP, art. 593 | 19/10/2026 (intimação pessoal em 16/10, sexta — Súm. 310 STF) | 23/10/2026 | 2 | 🔴 |
| Razões de apelação | CPP, art. 600 (ou § 4º) | [PENDENTE: intimação para razões] | — | — | 🟢 |
| Revisão nonagesimal da preventiva | CPP, art. 316, p.ú. | 10/08/2026 (última revisão) | 08/11/2026 (domingo; prazo do juízo — provocar antes) | 18 | 🟢 |
## Premissas e pendências
- Fonte da intimação: certidão id [PENDENTE], fl. [PENDENTE] — confiança MÉDIA
```
**Alerta no resumo ao orquestrador** (≤ 15 linhas): `🔴 PRAZO FATAL — <ato> — vence <data> — restam <n> dias — <RÉU PRESO?>`. Mais de um prazo 🔴: ordenar do mais próximo ao mais distante.

---

## ⚙️ Interface de Expansão (Notebooks Futuros)
> [!IMPORTANT]
> Placeholder para o script `prazos-penais.mjs`, que implementará `CONTAR_PRAZO_PENAL()` com calendário versionado (feriados nacionais, de Pernambuco, de Timbaúba e portarias do TJPE lidas de `Shared/calendario.md`), leitura automática da aba de expedientes do PJe e do DJe, cálculo do art. 798-A com exceções, geração de `wiki/prazos.md` e disparo de alerta (e-mail/Obsidian) para prazos 🔴. Futuro: integração com o painel do `/gestao-processos` e com o log do `/napkin` para registrar incidentes de prazo.
