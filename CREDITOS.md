# Créditos e atribuição

## Material original

**Ethics of AI** — curso online gratuito da Universidade de Helsinque.

- Site do curso: <https://ethics-of-ai.mooc.fi/>
- Repositório-fonte: <https://github.com/rage/ethics-of-ai-copy>
- Licença: CC BY-NC-SA 4.0

### Professores responsáveis

**Anna-Mari Rusanen** — filósofa da inteligência artificial e das ciências
cognitivas. Seus temas de pesquisa vão dos fundamentos filosóficos da
inteligência artificial à dinâmica cognitiva da interação humano-máquina, e das
questões éticas à natureza das explicações computacionais. Atualmente é
professora universitária de ciência cognitiva (Departamento de Humanidades
Digitais, Universidade de Helsinque) e especialista sênior em aspectos éticos e
societais da IA no Ministério das Finanças da Finlândia.

**Jukka K. Nurminen** — professor do Departamento de Ciência da Computação.
Investiga ferramentas e técnicas para o desenvolvimento de sistemas de software
intensivos em dados, o que inclui teste de sistemas de IA, soluções técnicas
para tomada de decisão ética e desenvolvimento de software para novas
plataformas computacionais, como computadores quânticos e computação de borda
altamente distribuída.

### Demais contribuintes principais

**Santeri Räisänen** — doutorando em Estudos de Ciência e Tecnologia no Centro
de Pesquisa da Sociedade de Consumo. Tem formação em Filosofia e Matemática, e
sua pesquisa atual gira em torno das narrativas tecnológicas que cercam as
práticas de dados e seu papel na mudança sociotécnica. Integra também a equipe
editorial da revista online Zelda Zine.

**Sasu Tarkoma** — professor e chefe do Departamento de Ciência da Computação
da Universidade de Helsinque e diretor do Helsinki Center for Data Science
(HiDATA). Sua pesquisa combina sistemas distribuídos, IA e privacidade e
segurança de dados no projeto e na validação de habilitadores de infraestrutura
digital. É membro do grupo nacional de especialistas em tecnologia de IA do
Ministério das Finanças.

**Saara Halmetoja** — Ciência Cognitiva, Universidade de Helsinque. Tem
formação em (neuro)linguística, design de experiência do usuário e comunicação.
Seus interesses de pesquisa cruzam linguagem e mente. Defensora da ciência
aberta e interdisciplinar, valoriza tornar a pesquisa mais acessível por meio de
visualizações e codesign. Na Digi Platform da Universidade Aalto, coordenou
eventos de divulgação sobre tecnologia e colaborações entre ciência e artes,
como a exposição Connecting the Dots, sobre IA.

### Plataforma

O site do curso, o sistema de questionários embutido no material e as demais
funções e serviços foram criados pelo [MOOC Center](https://mooc.fi/) da
Universidade de Helsinque. Trabalharam no projeto: Henrik Nygren, Antti
Leinonen, George Misan Eyoyibo e Pekka Mäki-Mikola.

## Esta versão

Tradução e adaptação para o português brasileiro realizada por:

| Aluno | Matrícula |
|---|---|
| José Lucas Lira Bizil | 12411ECP005 |
| Fernando Mazzeto Lisboa Lima | 12211ECP006 |
| Matheus da Silva Fernandes | 12121ECP002 |

Engenharia de Computação · Programa CiberExt 26-29 · disciplina FEELT38103
Universidade Federal de Uberlândia · 2026
Orientação: Prof. Marcelo Rodrigues de Sousa

Esta é uma **obra derivada**. Os autores originais não participaram desta
tradução, não a revisaram e não a endossam. Erros de tradução são de
responsabilidade exclusiva dos tradutores.

## O que foi alterado em relação ao original

Registre aqui, com honestidade, tudo que não é tradução literal — a licença
CC BY-SA exige indicar as modificações:

- Tradução integral do texto para o português brasileiro.
- Conversão da marcação própria do site original (`<text-box>`, `<styled-text>`,
  `<hero-icon>`) para markdown puro, por meio de `assets/converter.py`. As
  quatro categorias de caixa do original (`philIcon`, `techIcon`, `bgIcon`,
  `exerIcon`) foram preservadas como blocos `filosofia`, `tecnica`, `contexto`
  e `definicao`.
- Os questionários interativos do original (marcados como `<quiz id="...">`)
  não constam do repositório-fonte: seu conteúdo fica no banco de dados da
  plataforma mooc.fi. Os enunciados foram recolhidos manualmente do curso
  publicado em <https://ethics-of-ai.mooc.fi/>, mediante acesso autenticado, e
  traduzidos integralmente. São 14 exercícios, distribuídos pelos sete
  capítulos.
- Os gabaritos e as rubricas de avaliação em `respostas/` são de autoria dos
  tradutores: o curso original não publica critérios de correção, já que a
  avaliação se dá por revisão por pares. A única exceção é o Exercício 6, cuja
  resposta objetiva decorre diretamente do texto do capítulo 3.
- No Exercício 11 acrescentou-se uma nota sugerindo casos brasileiros como
  ponto de partida opcional. O enunciado original não restringe a origem do
  artigo a ser analisado; a nota é uma adaptação de contexto, sinalizada como
  tal.
- Notas do tradutor, sempre marcadas com `[N. do T.]`, onde o exemplo
  original dependia de contexto europeu.
- Exercícios: as perguntas de reflexão do original foram preservadas e
  complementadas com questões objetivas de autoria dos tradutores, para
  viabilizar a correção automática na plataforma.
- Identidade visual própria (tipografia, paleta e diagramação), sem relação
  com a do site original.

## Glossário consolidado

Termos técnicos e a tradução adotada em todo o material. A convenção: na
primeira ocorrência de cada capítulo, a tradução vem seguida do termo original
em itálico entre parênteses; depois disso, apenas a forma em português.

| Inglês | Português adotado | 1ª ocorrência |
|---|---|---|
| accountability | responsabilização | Cap. 1 |
| allocative harm | dano alocativo | Cap. 6 |
| bias | viés | Cap. 1 |
| black box | caixa-preta | Cap. 1 |
| chilling effects | efeitos inibidores | Cap. 5 |
| deep learning | aprendizado profundo | Cap. 4 |
| ethics-washing | *ethics-washing* (maquiagem ética) | Cap. 7 |
| explainability | explicabilidade | Cap. 4 |
| fairness | equidade / justiça | Cap. 1 |
| GDPR | RGPD | Cap. 5 |
| in-the-loop / on-the-loop | no circuito / sobre o circuito | Cap. 3 |
| jaywalking | *jaywalking* | Cap. 5 |
| machine learning | aprendizado de máquina | Cap. 1 |
| proxy | substituto (*proxy*) | Cap. 6 |
| representational harm | dano representacional | Cap. 6 |
| responsibility | responsabilidade | Cap. 3 |
| robustness | robustez | Cap. 5 |
| safety / security | segurança | Cap. 5 |
| socially salient | socialmente saliente | Cap. 6 |
| stakeholder | parte interessada | Cap. 2 |
| tech solutionism | solucionismo tecnológico | Cap. 2 |
| transparency | transparência | Cap. 1 |
| trolley problem | problema do bonde | Cap. 1 |
| word embeddings | vetores de palavras (*word embeddings*) | Cap. 6 |

### Termos mantidos em inglês

Alguns termos foram deixados no original, em itálico e com glosa na primeira
ocorrência, por não terem equivalente estabelecido em português:
*ethics-washing*, *chilling effects*, *jaywalking*, *word embeddings*,
*adversarial patches*, *big data*.

### Casos que exigiram decisão

**`accountability` vs. `responsibility`.** O original distingue os dois termos,
e essa distinção é o eixo do capítulo 3. Adotamos "responsabilização" para
*accountability* (prestar contas, poder ser responsabilizado) e
"responsabilidade" para *responsibility*.

**`safety` vs. `security`.** O capítulo 5 os trata como conceitos distintos —
segurança contra acidentes e falhas *vs.* segurança contra ameaças intencionais.
O português tem apenas "segurança". Em vez de criar um par artificial,
acrescentamos uma frase explicando a distinção na abertura da seção e deixamos
o contexto operar.

**`fairness`.** Traduzido como "equidade" quando se opõe a "igualdade"
(*equality*), e como "justiça" nos demais contextos.

## Correções feitas em relação ao original

O capítulo 6 do texto em inglês remete à guilhotina de Hume dizendo "chapter 2";
ela está, na verdade, no capítulo 1. A referência foi corrigida na tradução.

## Ferramentas

- **pandoc** — conversão markdown → HTML e LaTeX
- **pdflatex** (TeX Live) — geração dos PDFs
- **Claude (Anthropic)** — apoio à tradução e à revisão; os prompts
  utilizados estão registrados em `PROMPTS.md`. Todo o texto produzido passou
  por conferência humana contra o original, conforme a lista de verificação
  ao final daquele arquivo.
