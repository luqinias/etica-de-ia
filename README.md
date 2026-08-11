# Ética da Inteligência Artificial — versão em português

Tradução e adaptação para o português brasileiro do curso **Ethics of AI**, da
Universidade de Helsinque.

**Curso do projeto de extensão:** Inteligência Artificial — conceitos,
aplicações e riscos
**Programa:** CiberExt 26-29 · FEELT38103 · Universidade Federal de Uberlândia
**Alunos:** José Lucas Lira Bizil (12411ECP005), Fernando Mazzeto Lisboa Lima (12211ECP006) e Matheus da Silva Fernandes (12121ECP002)
**Orientação:** Prof. Marcelo Rodrigues de Sousa
**Ano:** 2026

- Curso original: <https://ethics-of-ai.mooc.fi/>
- Repositório-fonte: <https://github.com/rage/ethics-of-ai-copy>
- Licença: CC BY-NC-SA 4.0 (mesma do original — ver `LICENCA.md`)

---

## O que é este repositório

O material do curso em português, em três formatos por capítulo (HTML, LaTeX e
PDF), mais exercícios e gabarito separados, pronto para ser importado numa
plataforma como a Open edX.

O princípio da organização: **o markdown é a única fonte da verdade.** Ninguém
edita o `.html`, o `.tex` ou o `.pdf` — eles são gerados pelo
`assets/build.sh` a partir do `.md`. Assim os três formatos nunca ficam
dessincronizados.

## Situação atual

**Os sete capítulos estão traduzidos.** 75 páginas em PDF, com as 27 imagens do
original, compilando sem erros.

| # | Capítulo | Eixo | Páginas |
|---|---|---|---|
| 1 | O que é ética da IA? | Conceitos | 9 |
| 2 | Não-maleficência: o que devemos fazer? | Conceitos e Riscos | 9 |
| 3 | Responsabilização: quem deve ser responsabilizado? | Conceitos e Riscos | 8 |
| 4 | Transparência: devemos saber como a IA funciona? | Conceitos e Riscos | 10 |
| 5 | Direitos humanos: a IA deve respeitá-los? | Conceitos, Aplicações e Riscos | 15 |
| 6 | Equidade: a IA deve ser justa? | Conceitos, Aplicações e Riscos | 15 |
| 7 | Ética na prática: como a ética da IA pode evoluir? | Riscos e Aplicações | 9 |

### O que ainda falta antes da entrega

**Revisão humana.** Percorrer a lista de verificação ao final de `PROMPTS.md`,
capítulo a capítulo, comparando cada `capituloNN.md` com o
`origem-en-capituloNN.md` da mesma pasta. Isso não é opcional: a tradução foi
feita com apoio de IA e precisa de conferência antes de ir ao ar.

Autoria, matrículas, orientação e licença já estão preenchidos em todos os
arquivos.

## Estrutura

```
MaterialProduzido/
├── README.md               este arquivo
├── indice.md/.html/.tex/.pdf   porta de entrada do curso
├── Curso-Etica-da-IA-completo.pdf   os 7 capítulos num volume só (78 pág.)
├── CREDITOS.md             autores originais e o que foi modificado
├── LICENCA.md              termos da CC BY-NC-SA 4.0
├── PROMPTS.md              os prompts usados na produção
├── build-all.sh            compila todos os capítulos
├── build-extras.sh         compila exercícios, gabaritos e índice
│
├── assets/
│   ├── build.sh              gera html + tex + pdf de um capítulo
│   ├── converter.py          converte a marcação do repositório original
│   ├── blocos.lua            filtro pandoc: ::: nota → \begin{nota}
│   ├── ia-style.css          identidade visual do HTML
│   ├── ia-header.tex         identidade visual do PDF
│   └── modelo-capitulo.md    esqueleto para um capítulo novo
│
├── Capitulo01/ … Capitulo07/
│   ├── origem-en-capituloNN.md   texto em inglês, marcação já convertida
│   ├── capituloNN.md             ← o que se edita (a tradução)
│   ├── capituloNN.html           ← gerado
│   ├── capituloNN.tex            ← gerado
│   ├── capituloNN.pdf            ← gerado
│   └── img/                      .svg e .png do original + .pdf convertidos
│
├── exercicios/             enunciados traduzidos (vão para a plataforma)
│   └── capituloNN-exercicios.{md,html,tex,pdf}
└── respostas/              gabaritos e rubricas (uso do docente)
    └── capituloNN-respostas.{md,html,tex,pdf}
```

## Como compilar

```bash
sudo apt install pandoc texlive-latex-recommended texlive-latex-extra \
                 texlive-fonts-recommended poppler-utils
pip install cairosvg          # só se precisar reconverter figuras

./assets/build.sh 03          # um capítulo
./build-all.sh                # todos
```

Para regerar o volume único (`Curso-Etica-da-IA-completo.pdf`) depois de mudar
algum capítulo:

```bash
pip install pypdf --break-system-packages
python3 -c "
from pypdf import PdfWriter
w = PdfWriter()
w.append('indice.pdf')
for n in range(1,8): w.append(f'Capitulo{n:02d}/capitulo{n:02d}.pdf')
w.write('Curso-Etica-da-IA-completo.pdf'); w.close()"
```

## Como editar um capítulo

O `.md` é a fonte. Edite-o e rode `./assets/build.sh NN` — os três formatos são
regerados. Nunca edite o `.html`, o `.tex` ou o `.pdf` diretamente: eles são
sobrescritos a cada compilação.

O arquivo `origem-en-capituloNN.md` de cada pasta guarda o texto em inglês, com
a marcação já convertida. Serve para conferir a tradução contra o original.

## Os blocos de apoio

O material original usa quatro tipos de caixa, sinalizados por ícones. O
`converter.py` preserva essa distinção:

| Ícone no original | Nosso bloco | Uso |
|---|---|---|
| `philIcon` | `::: filosofia` | conceito ou argumento filosófico |
| `techIcon` | `::: tecnica` | explicação técnica |
| `bgIcon` | `::: contexto` | contexto histórico ou de fundo |
| `exerIcon` | `::: definicao` | definição formal |

Cada bloco aceita um título próprio, que aparece como rótulo da caixa nos dois
formatos.

Mais três nossos: `::: nota`, `::: caso` e `::: reflexao`. Todos aceitam um
título próprio:

```markdown
::: {.filosofia data-titulo="A guilhotina de Hume"}
texto
:::
```

Funciona nos três formatos: no HTML pelo CSS, no PDF pelo filtro `blocos.lua`
somado aos ambientes de `ia-header.tex`.

## Imagens

As imagens do original já estão em `CapituloNN/img/`. Atenção: parte delas não
fica na pasta do capítulo no repositório de origem, e sim em `src/assets/`,
compartilhada entre capítulos — o `converter.py` não as recolhe
automaticamente. Ao traduzir um capítulo novo, confira se toda imagem citada
existe:

```bash
grep -o "img/[A-Za-z0-9_.-]*" Capitulo05/capitulo05.md | sort -u | \
  while read i; do [ -f "Capitulo05/$i" ] || echo "FALTA: $i"; done
```

O que faltar quase sempre está em `/tmp/eoa/src/assets/` (ou no clone que
vocês fizerem do repositório original). Os `.svg` foram convertidos para `.pdf` com o cairosvg,
porque o pdflatex não lê SVG. No markdown, referencie sempre o `.svg` — o
`build.sh` troca a extensão sozinho ao gerar o `.tex`.

## Identidade visual

| Cor | Hex | Uso |
|---|---|---|
| Petróleo | `#24505C` | títulos de seção, nota técnica |
| Verdete | `#16746C` | subtítulos, contexto |
| Açafrão | `#B45F14` | destaques, links externos, definições |
| Ameixa | `#77345F` | links internos, blocos de filosofia |
| Papel | `#FBF8F3` | fundo |

O elemento de assinatura é a faixa tricolor na abertura de cada capítulo.

## Os exercícios

**Os 14 exercícios do curso original estão traduzidos**, em
`exercicios/capituloNN-exercicios.md`, com gabaritos e critérios de avaliação em
`respostas/capituloNN-respostas.md`.

Vale registrar como foram obtidos: os questionários **não estão no
repositório-fonte** — o `<quiz id="...">` do markdown original aponta para o
banco de dados da plataforma mooc.fi. Foi preciso acessar o curso logado, em
<https://ethics-of-ai.mooc.fi/>, e recolher os enunciados capítulo a capítulo.

| Cap. | Exercícios |
|---|---|
| 1 | 1a e 1b (valores pessoais), 2 (associação), 3 e 3c (caso do Twitter) |
| 2 | 4 (horizontes temporais), 5 (as quatro oportunidades do AI4People) |
| 3 | 6 (*deepfakes*: Turing, Lovelace e Gödel), 7 (quatro responsabilidades) |
| 4 | 8 (três visualizações de aprendizado por reforço) |
| 5 | 9a e 9b (Declaração dos Direitos Humanos da IA), 10 (calçadas engaioladas) |
| 6 | 11 (análise de um caso real de discriminação) |
| 7 | 12a, 12b e 12c (três posições sobre o *ethics-washing*) |

Este curso não tem código — o Judge0, usado em cursos de programação, não se
aplica. Cada exercício traz indicado o componente Open edX correspondente:

| Tipo | Componente da Open edX | Ocorrências |
|---|---|---|
| dissertativa com revisão por pares | `openassessment` | a maioria |
| múltipla escolha | `multiplechoiceresponse` | Ex. 6, Ex. 8 (1ª parte) |
| seleção múltipla | `choiceresponse` | Ex. 1a |
| associação (menu suspenso) | `optionresponse` | Ex. 2 |
| escala / pesquisa | `survey` ou escala 1–7 | Ex. 1b, avaliações |

**Apenas o Exercício 6 tem resposta objetiva correta** — está no gabarito do
capítulo 3. Todos os demais são dissertativos: os arquivos em `respostas/`
trazem critérios de avaliação em rubrica, elementos esperados e os erros comuns
a observar na revisão por pares.

Para compilar exercícios, gabaritos e índice:

```bash
./build-extras.sh
```

O HTML de cada capítulo é autocontido — o CSS vai embutido — então pode ser
colado direto num componente HTML da plataforma.

## Créditos

Material original de **Anna-Mari Rusanen** e **Jukka K. Nurminen**
(professores responsáveis), com **Santeri Räisänen**, **Sasu Tarkoma** e
**Saara Halmetoja**. Detalhes completos em `CREDITOS.md`.

Esta é uma **obra derivada**. Os autores originais não a revisaram nem a
endossam.
