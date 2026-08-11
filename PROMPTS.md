# Prompts utilizados

Registro dos prompts usados na produção deste material, para que o processo
seja auditável e reproduzível — parte da entrega do projeto de extensão.

---

## Prompt 1 — Tradução de um capítulo

Usado uma vez por capítulo. Cole o conteúdo de
`CapituloNN/origem-en-capituloNN.md` logo abaixo do prompt.

> Traduza o texto a seguir, do capítulo N do curso *Ethics of AI*, para a
> língua portuguesa (pt-BR). Você deve melhorar o português de forma que o
> texto fique fluido e compreensível, mantendo o registro acadêmico
> acessível do original — o curso é dirigido a leigos, sem exigência de
> conhecimento prévio de IA ou de computação.
>
> O texto de entrada já vem com a marcação convertida: blocos
> `::: {.filosofia data-titulo="..."}`, `::: tecnica`, `::: contexto` e
> `::: definicao`. **Preserve esses blocos exatamente onde estão** e traduza
> também o conteúdo do atributo `data-titulo`.
>
> Regras de terminologia:
>
> - Termos técnicos consagrados em inglês (*machine learning*, *deep
>   learning*, *bias*, *overfitting*, *accountability*, *black box*) devem
>   aparecer, na primeira ocorrência de cada capítulo, com a tradução
>   seguida do termo original em itálico entre parênteses. A partir daí, use
>   apenas a forma em português.
> - Nomes próprios, nomes de instituições, títulos de obras e leis citadas,
>   e siglas permanecem no original.
> - Nomes de sistemas, algoritmos e produtos (COMPAS, GPT, ChatGPT) não são
>   traduzidos.
>
> Regras de conteúdo:
>
> - Exemplos, casos, datas e estatísticas do original devem ser preservados
>   integralmente. Não substitua por equivalentes brasileiros. Se um exemplo
>   depender de contexto europeu que o leitor brasileiro não teria, acrescente
>   uma nota curta entre colchetes começando com `[N. do T.]`, sem alterar o
>   texto original.
> - Preserve todos os links e todas as referências bibliográficas.
> - Não resuma, não expanda e não acrescente conteúdo próprio.
>
> Formato de saída: markdown, seguindo o modelo em `assets/modelo-capitulo.md`.
> Use os blocos `::: nota`, `::: caso` e `::: reflexao` para, respectivamente,
> objetivos de aprendizagem, estudos de caso e perguntas de reflexão.
> Mantenha o bloco `::: licenca` do final intacto.

**Observação sobre o processo.** Os arquivos `.html`, `.tex` e `.pdf` **não**
são pedidos ao modelo: são gerados pelo `assets/build.sh` a partir do
markdown. Isso garante que os três formatos nunca fiquem dessincronizados —
o markdown é a única fonte da verdade.

---

## Prompt 2 — Revisão do português

Aplicado ao markdown já traduzido, antes de gerar os derivados.

> Revise o texto em português abaixo. Corrija erros de gramática, concordância
> e pontuação; elimine decalques do inglês (voz passiva excessiva, "de forma
> que", "uma vez que" em excesso, gerundismo); e uniformize a terminologia com
> o glossário em anexo. Não altere o sentido, não corte informação e não mexa
> na estrutura de seções nem nos blocos `:::`. Devolva apenas o markdown
> corrigido, sem comentários.

---

## Prompt 3 — Elaboração dos exercícios

> A partir do capítulo traduzido abaixo, produza os exercícios do capítulo N
> seguindo exatamente o formato de `exercicios/modelo-exercicios.md`.
>
> **Atenção:** os questionários do material original NÃO estão no
> repositório-fonte — o `<quiz id="...">` aponta para o banco de dados da
> plataforma mooc.fi. Onde o conversor deixou um bloco `::: reflexao`
> sinalizando a lacuna, o exercício precisa ser escrito do zero, a partir do
> conteúdo daquela seção.
> - Complete até um total de 6 a 10 exercícios por capítulo, distribuídos
>   entre múltipla escolha, verdadeiro/falso e dissertativa.
> - Os exercícios de múltipla escolha devem ter exatamente uma alternativa
>   correta e distratores plausíveis, derivados de confusões conceituais reais
>   discutidas no capítulo — nunca alternativas absurdas.
> - Nenhum exercício pode ser respondido sem ter lido o capítulo.
>
> Produza dois arquivos separados: `exercicios/capituloNN-exercicios.md` e
> `respostas/capituloNN-respostas.md`. O arquivo de exercícios não pode
> conter nenhuma pista da resposta.

---

## Prompt 4 — Glossário consolidado

Rodado uma única vez, no final, sobre todos os capítulos.

> Percorra os sete capítulos traduzidos e extraia todos os termos técnicos
> que receberam tradução. Produza uma tabela markdown com três colunas:
> termo em inglês, tradução adotada, capítulo da primeira ocorrência.
> Aponte explicitamente qualquer caso em que o mesmo termo em inglês foi
> traduzido de duas maneiras diferentes ao longo do material.

---

## Verificações manuais obrigatórias

Nenhum capítulo é considerado pronto sem que uma pessoa tenha conferido:

0. O texto traduzido confere com `origem-en-capituloNN.md`, parágrafo a
   parágrafo — nada foi omitido nem acrescentado.
1. Todos os links do original ainda funcionam e apontam para o mesmo destino.
2. Números, datas e nomes próprios batem com o original.
3. Nenhum trecho foi resumido ou omitido.
4. O bloco `::: licenca` está presente e correto.
5. O PDF compila sem `overfull hbox` grave e o sumário está completo.
