---
title: "Ética da Inteligência Artificial"
subtitle: "Capítulo 3: Responsabilização — quem deve ser responsabilizado?"
author: |
  Tradução e adaptação para o português: José Lucas Lira Bizil, Fernando Mazzeto Lisboa Lima e Matheus da Silva Fernandes\
  Programa CiberExt 26-29 · FEELT38103 · Universidade Federal de Uberlândia\
  Original: *Ethics of AI*, Universidade de Helsinque
date: "2026"
lang: pt-BR
---

# Capítulo 3: Responsabilização — quem deve ser responsabilizado?

::: {.nota data-titulo="Sobre este capítulo"}
**Eixo:** Conceitos e Riscos

Quando um sistema de IA causa dano, quem responde por isso? Este capítulo
examina os conceitos de agência moral, autonomia e responsabilização, e mostra
por que individualizar responsabilidades em sistemas algorítmicos é
notoriamente difícil.
:::

## I. Algoritmos e responsabilização

::: {.tecnica data-titulo="Fiscalização de estacionamento em Amsterdã"}
Na cidade de Amsterdã, a fiscalização de estacionamento é parcialmente
automatizada e está em uso em 150 mil vagas de rua. O serviço segue um processo
de três etapas:

1) Carros de varredura equipados com câmeras percorrem a cidade e usam software
de reconhecimento de objetos para escanear e identificar as placas dos carros
ao redor.

2) Após a identificação, o número da placa é verificado no Registro Nacional de
Estacionamento para validar se o carro tem permissão para estacionar naquele
local. Sempre que não houver pagamento para o estacionamento em curso, o caso é
enviado a um fiscal humano para processamento adicional.

3) Um fiscal de estacionamento usa as imagens escaneadas para avaliar
remotamente se há uma situação especial, como carga ou descarga, ou carros
parados diante de um semáforo. O fiscal também pode verificar a situação no
local, de scooter. Sempre que não houver razão válida para o estacionamento
não pago, é emitida uma multa.

![Fiscalização de estacionamento](img/am-park.svg)
:::

Os serviços de fiscalização de estacionamento são um exemplo de como
algoritmos vêm sendo cada vez mais usados para automatizar serviços públicos.
Como algoritmos são exatos, rápidos e precisos, com frequência promovem melhor
eficiência, confiabilidade e consistência do serviço. Paradoxalmente,
algoritmos também podem cometer erros sistemáticos, ser enviesados (*bias*) e causar
danos sérios. Sistemas de varredura, por exemplo, podem apresentar mau
funcionamento ou sofrer com falhas de programação. Podem cometer enganos e
sugerir que multas sejam emitidas sem fundamento válido. Nesses casos, quem
deve assumir a responsabilidade — e com base em quê?

Embora digamos coisas como "sim, a culpa foi do algoritmo e ele é responsável
pela decisão errada", não queremos dizer literalmente que os algoritmos
contemporâneos seriam moralmente culpados. Os algoritmos são, antes, fatores
causais que estão na base das decisões. Meras causas, contudo, diferem de ações
moralmente responsáveis.

Ainda que os próprios algoritmos não possam ser responsabilizados, por não
serem agentes morais ou jurídicos, as organizações que os projetam e implantam
podem ser consideradas moralmente responsáveis por meio de estruturas de
governança. Assim, no caso da cidade de Amsterdã, é o fiscal humano que toma a
decisão final — e também assume a responsabilidade. No entanto, um dia o fiscal
humano também poderá ser substituído por algoritmos. Quem, então, assumirá a
responsabilidade?

::: {.tecnica data-titulo="Decisão automatizada vs. decisão autônoma"}
**Sistemas automatizados** normalmente operam dentro de um conjunto bem
definido de parâmetros e são muito restritos quanto às tarefas que podem
executar. As decisões tomadas ou ações executadas por um sistema automatizado
baseiam-se em heurísticas ou regras predefinidas.

**Um sistema autônomo** aprende e se adapta a ambientes dinâmicos, e evolui
conforme o ambiente ao seu redor muda. Os dados com os quais ele aprende e aos
quais se adapta podem estar fora daquilo que foi considerado quando o sistema
foi implantado.

Automação ou autonomização são questões de grau e, portanto, formam um
contínuo, e não situações simples de sim ou não. Por exemplo, pode-se dizer que
um sistema é autônomo em relação ao controle humano até certo grau.

![Níveis de automatização](img/levels-automatisation.svg)
:::

## II. O que é responsabilização?

Responsabilização (*accountability*) significa o estado de ser responsável ou
de ter de prestar contas por um sistema, seu comportamento e seus impactos
potenciais. É o reconhecimento da responsabilidade por ações, decisões e
produtos.

A responsabilidade pode ser jurídica ou moral (ética). **Juridicamente**, um
ator é responsável por um evento quando um sistema jurídico está apto a
penalizá-lo por esse evento. **Moralmente**, um ator é responsável por um ato
se pode ser culpado pela ação. Responsabilidade moral e jurídica são coisas
diferentes. Nem sempre coincidem: um agente pode ser juridicamente responsável
mesmo sem ser moralmente responsável, e vice-versa. Neste curso, vamos nos
concentrar apenas nos aspectos morais da responsabilidade.

Na ética da IA, há três sentidos ou dimensões distintas de responsabilização.
Cada uma aponta para um meio de ação diferente:

* A questão de determinar a responsabilidade — quais indivíduos (ou grupos)
  respondem pelo impacto dos algoritmos ou da IA? Quem é responsável por qual
  efeito dentro do sistema sociotécnico como um todo?
* Uma característica do sistema social que desenvolve, produz e usa IA.
* Uma característica do próprio sistema de IA.

## III. Quem deve ser culpado — e por quê?

![Agente e ação](img/agent-action.svg)

Na ética, a responsabilização está estreitamente ligada ao conceito de "agência
moral". Um agente moral é "um agente capaz de agir com referência ao certo e ao
errado". É importante notar que apenas agentes morais são moralmente
responsáveis por suas ações.

**Ações e omissões**

Filosoficamente, um agente moral é responsável primariamente por suas próprias
ações ("atos"). Às vezes, os agentes também são responsáveis por não fazer
algo, isto é, por "omissões". Assim, se eu mato alguém, sou responsável por
esse ato. Se apenas deixo alguém morrer, sou responsável por não ter ajudado
(omissão), ainda que eu não tenha matado ativamente.

Omissões e ações não são moralmente equivalentes. É moralmente menos grave
omitir algo do que praticar um ato: é pior matar alguém ativamente do que
deixar essa pessoa morrer. Mas isso não torna as omissões moralmente corretas.
Ainda assim, não podemos ser responsáveis por todas as coisas que deixamos de
fazer. Somos responsáveis apenas por aquilo que escolhemos fazer ou omitir de
maneira deliberada e consciente.

**Autonomia**

Filosoficamente, a responsabilidade moral requer 1) autonomia moral e 2) a
capacidade de avaliar as consequências das ações. "Autonomia moral" significa a
capacidade do agente de impor a si mesmo o código moral, de modo
autogovernado. Além disso, a autonomia requer:

* a capacidade de governar a si mesmo sem manipulação por outros e a
  possibilidade de agir sem constrangimentos externos ou internos;
* a autenticidade dos desejos (valores, emoções etc.) que movem alguém a agir;
* habilidades cognitivas suficientes — ou seja, o agente deve ser capaz de
  avaliar, prever e comparar as consequências de suas ações e, também, de
  estimar os motivos que impulsionam a ação, usando critérios eticamente
  significativos.

::: {.filosofia data-titulo="Responsabilidade moral"}
Immanuel Kant é um dos filósofos morais europeus mais célebres. Para Kant, a
razão prática — nossa capacidade de usar razões para escolher nossas próprias
ações — pressupõe que somos livres. As ações baseiam-se em nossa própria
vontade de utilizar uma lei moral para guiar nossas decisões. Para Kant e para
os kantianos, a tese é que essa capacidade (a de impor a lei moral a nós
mesmos) é a fonte última de todo valor moral.

Assim, segundo Kant, devemos respeito moral a nós mesmos em virtude de nossa
autonomia. Mas devemos respeito semelhante a todas as outras pessoas em virtude
da capacidade delas. Portanto (pela segunda formulação do célebre Imperativo
Categórico de Kant), somos obrigados a agir a partir de um respeito fundamental
pelas outras pessoas em virtude da autonomia delas. Desse modo, a autonomia
serve tanto como modelo de razão prática na determinação da obrigação moral
quanto como a característica das outras pessoas que as torna merecedoras de
nosso respeito moral. (Para uma discussão mais ampla, veja
[Immanuel Kant e a filosofia moral](https://en.wikipedia.org/wiki/Categorical_imperative).)

![Retrato de Kant](img/kant.png)
:::

::: {.reflexao data-titulo="Exercícios desta seção"}
O material original traz aqui um questionário interativo. As perguntas não
constam do repositório de origem — ficam no banco de dados da plataforma. O
exercício correspondente deve ser redigido em
`exercicios/capitulo03-exercicios.md`.
:::

## IV. O problema de individualizar responsabilidades

A responsabilização é frequentemente entendida como uma obrigação jurídica e
ética de um indivíduo ou organização de aceitar a responsabilidade pelo uso de
sistemas de IA e de divulgar os resultados de maneira transparente. Essa
formulação pressupõe uma "relação de poder". Ela individualiza quem está no
controle e quem deve ser culpado.

Contudo, tem se mostrado notoriamente difícil estabelecer critérios específicos
sobre como, exatamente, as responsabilidades devem ser individualizadas,
direcionadas e definidas. Em muitos países há debates em curso sobre essas
questões. Atores internacionais, como a União Europeia e o G7, as trataram como
desafios em aberto.

Por que é tão difícil estabelecer critérios sobre quem é responsável?

* **Primeiro**, a qualidade das responsabilidades difere. Um ator é responsável
  por uma ação ou omissão específica, mas a qualidade da responsabilidade
  depende da parte envolvida. Assim, embora ao escolher uma ação você possa
  assumir a responsabilidade, a qualidade dessa responsabilidade depende
  também de suas propriedades. As tecnologias inteligentes complicam ainda mais
  esse quadro.

    À medida que delegamos cada vez mais tarefas e funções de tomada de decisão
    a algoritmos, também moldamos as estruturas de decisão. A IA amplia nossa
    inteligência ao nos dar mais poder computacional, permitir melhores
    previsões e aprimorar nosso aparato sensorial. Humanos e máquinas tornam-se
    híbridos cognitivos. Cooperam cognitivamente (pensamento) e epistemicamente
    (conhecimento), tanto no nível individual quanto no coletivo. Isso cria
    propriedades sistêmicas.

    Costuma-se pensar que basta um humano permanecer "no circuito"
    (*in-the-loop*) ou "sobre o circuito" (*on-the-loop*) — ou seja, que em
    algum ponto da tomada de decisão um indivíduo humano seria capaz de
    monitorar o sistema artificial ou nele intervir. No entanto, à medida que
    algoritmos entram na tomada de decisão, digamos, na governança do setor
    público, a decisão coletiva pode assumir uma forma muito complexa e
    altamente distribuída. Individualizar e endereçar os fatores de modo a
    garantir que um humano permaneça no circuito pode ser realmente difícil.

* **Segundo**, a tecnologia também pode assumir uma forma persuasiva: ela
  influencia e controla as pessoas. Um exemplo clássico é o som do alarme do
  cinto de segurança. Em muitos carros, se os cintos não estiverem afivelados,
  um bipe constante é acionado. Isso pode ser entendido como uma forma de
  influência controladora — nesse caso, uma espécie de coerção. O motorista só
  consegue interromper o som afivelando o cinto. Aplicações algorítmicas
  contemporâneas podem ter cada vez mais características desse tipo: elas
  propõem, sugerem e limitam as opções.

    Mas uma ação só é praticada voluntariamente se for praticada
    intencionalmente (quem age está "no controle") e estiver livre de
    influências controladoras. O motorista está livre de influências
    controladoras se o sistema do cinto de segurança o força a reagir ao bipe?
    Ou: estamos livres de controle se os algoritmos decidem as fotos de quem
    veremos nos sites de relacionamento, ou que música estamos prestes a ouvir?
    Qual é, exatamente, a diferença entre sugestão algorítmica, controle e
    manipulação?

    Naturalmente, a tecnologia persuasiva deveria cumprir a exigência de
    voluntariedade para garantir a autonomia. Os algoritmos complicam essa
    questão, uma vez que a voluntariedade pressupõe uma compreensão suficiente
    do uso daquela tecnologia específica. Mas o que significa "compreender", e
    qual é, de fato, o grau suficiente? Qual é a leitura correta de
    "compreensibilidade" — "transparência", "explicabilidade" ou
    "auditabilidade"? Quanto, e o que exatamente, um usuário deveria entender
    sobre a tecnologia? Quando alguém pode genuinamente avaliar se quer ou não
    usar aquela tecnologia em particular? Examinaremos esse tema em mais
    detalhe no capítulo 4.

::: {.reflexao data-titulo="Exercícios desta seção"}
O material original traz aqui um questionário interativo. As perguntas não
constam do repositório de origem. O exercício correspondente deve ser redigido
em `exercicios/capitulo03-exercicios.md`.
:::

### Estudo de caso: o diretor digital de Helsinque

![Hospital](img/_MS_9489_HDR_cropped.jpg)

*Imagem © Cidade de Helsinque / Comunicação*

::: {.caso data-titulo="De quem é a responsabilidade?"}
Voltemos ao caso da saúde em Helsinque (mencionado no início do capítulo 2).
Suponha que você seja o diretor digital da cidade de Helsinque. Pedem que você
avalie se a organização de saúde da cidade deveria migrar de uma saúde reativa
para uma saúde preventiva. Você lê um relatório que discute métodos novos,
baseados em aprendizado de máquina (*machine learning*), que ajudariam as autoridades de saúde a
prever os possíveis riscos de saúde dos cidadãos.

O relatório menciona muitas vantagens, como prevenção de doenças, melhor
estimativa de impacto e melhor planejamento dos serviços básicos de saúde.
Contudo, também revela algumas preocupações com privacidade, polarização e a
possível ameaça de discriminação não intencional. Além disso, o relatório
levanta a questão fundamental do papel da cidade. Se a cidade tem informação
sobre os riscos potenciais de saúde e não age sobre esses dados, a cidade é
moralmente responsável por negligência?

O relatório também aborda a questão de individualizar responsabilidades. Se o
sistema fosse aplicado na prática, haveria sempre o risco de que cometesse um
erro. Quem devemos culpar se isso acontecer?
:::

::: {.reflexao data-titulo="Exercícios desta seção"}
No material original, este estudo de caso termina com uma tarefa dissertativa
sobre a responsabilidade de um diretor digital, avaliada por revisão por pares.
Redija a versão em português desse exercício em
`exercicios/capitulo03-exercicios.md`.
:::

## Referências

Kant, I. (1785). *Grundlegung zur Metaphysik der Sitten* [Fundamentação da
Metafísica dos Costumes].

Cidade de Amsterdã — sistema automatizado de fiscalização de estacionamento.

---

::: licenca
**Material original:** *Ethics of AI*, um curso online gratuito da
Universidade de Helsinque. Professores responsáveis: Anna-Mari Rusanen e
Jukka K. Nurminen. Demais contribuintes principais: Santeri Räisänen, Sasu
Tarkoma e Saara Halmetoja. Disponível em <https://ethics-of-ai.mooc.fi/>.

**Esta versão:** tradução e adaptação para o português brasileiro realizada
por José Lucas Lira Bizil, Fernando Mazzeto Lisboa Lima e Matheus da Silva Fernandes, no âmbito do Programa CiberExt 26-29 (FEELT38103),
Universidade Federal de Uberlândia, 2026. Esta é uma obra derivada; os autores
originais não a revisaram nem a endossam.

**Licença:** Creative Commons Atribuição-NãoComercial-CompartilhaIgual 4.0
Internacional (CC BY-NC-SA 4.0) —
<https://creativecommons.org/licenses/by-nc-sa/4.0/deed.pt-br>.
:::
