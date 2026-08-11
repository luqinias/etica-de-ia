#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
converter.py — traduz a MARCAÇÃO (não o texto) do repositório rage/ethics-of-ai-copy
para o markdown do nosso projeto.

O material original usa componentes próprios do site em Gatsby:

    <styled-text>                 invólucro visual, sem semântica
    <text-box icon="philIcon" name="Título">   caixa de destaque
    <hero-icon heroIcon='chap1'/> ícone decorativo
    <quiz id="uuid">              questionário interativo (conteúdo fica no
                                  banco de dados do mooc.fi, NÃO no repositório)
    <pages-in-this-section>       índice gerado automaticamente
    <exercises-in-this-section>   idem
    <img src=... alt=...>         imagem em HTML

Este script converte tudo isso para markdown puro mais os blocos ::: do nosso
projeto, que funcionam no HTML e no PDF.

Uso:
    python3 converter.py <dir-origem-en> <dir-destino>
"""

import os
import re
import sys
import shutil

# --------------------------------------------------------------------------
# Mapeamento dos ícones do original para os nossos blocos.
# Preserva a semântica: o autor escolheu o ícone para sinalizar o tipo de caixa.
# --------------------------------------------------------------------------
ICONES = {
    "philIcon": "filosofia",   # conceito ou argumento filosófico
    "techIcon": "tecnica",     # explicação técnica
    "bgIcon":   "contexto",    # contexto histórico ou de fundo
    "exerIcon": "definicao",   # definição formal
}
BLOCO_PADRAO = "nota"


def escapa_titulo(t):
    return t.replace('"', "'").strip()


def converte_text_box(texto):
    """<text-box icon=... name=...> ... </text-box>  →  ::: {.tipo data-titulo=...}"""
    def abre(m):
        attrs = m.group(1)
        icone = re.search(r'icon=["\']([^"\']*)["\']', attrs)
        nome = re.search(r'name=["\']([^"\']*)["\']', attrs)
        tipo = ICONES.get(icone.group(1) if icone else "", BLOCO_PADRAO)
        titulo = escapa_titulo(nome.group(1)) if nome else ""
        if titulo:
            return '\n::: {.%s data-titulo="%s"}\n' % (tipo, titulo)
        return '\n::: {.%s}\n' % tipo

    texto = re.sub(r'<text-box([^>]*)>', abre, texto)
    texto = re.sub(r'</text-box>', '\n:::\n', texto)
    return texto


def converte_img(texto):
    """<img src=X alt=Y> → ![Y](X)   (mantendo só o nome do arquivo)"""
    def repl(m):
        attrs = m.group(1)
        src = re.search(r'src=["\']?([^"\'\s>]+)', attrs)
        alt = re.search(r'alt=["\']([^"\']*)["\']', attrs)
        if not src:
            return ""
        caminho = src.group(1)
        arquivo = os.path.basename(caminho)
        legenda = alt.group(1) if alt else "Figura"
        return '\n![%s](img/%s)\n' % (legenda, arquivo)

    return re.sub(r'<img([^>]*?)/?>', repl, texto)


def converte_quiz(texto):
    """
    <quiz id="uuid"> → marcador.
    O conteúdo das perguntas NÃO está no repositório: fica no banco de dados
    da plataforma. Cada marcador vira uma tarefa explícita de autoria.
    """
    def repl(m):
        return ('\n::: {.reflexao data-titulo="Questionário do original"}\n'
                'O material original traz aqui um questionário interativo '
                '(id `%s`). As perguntas não constam do repositório — ficam no '
                'banco de dados da plataforma. Redija o exercício '
                'correspondente em `exercicios/`.\n:::\n' % m.group(1)[:8])

    return re.sub(r'<quiz\s+id=["\']([^"\']*)["\']\s*>\s*(?:</quiz>)?', repl, texto)


def limpa(texto):
    # invólucros e índices automáticos, sem conteúdo próprio
    for tag in ["styled-text", "hero-icon", "pages-in-this-section",
                "exercises-in-this-section"]:
        texto = re.sub(r'</?%s[^>]*/?>' % tag, '', texto)
    texto = re.sub(r'<br\s*/?>', '  \n', texto)
    texto = re.sub(r'</?div[^>]*>', '', texto)
    # três ou mais linhas em branco viram duas
    texto = re.sub(r'\n{3,}', '\n\n', texto)
    return texto


def le_frontmatter(texto):
    m = re.match(r'^---\n(.*?)\n---\n', texto, re.S)
    if not m:
        return {}, texto
    meta = {}
    for linha in m.group(1).split("\n"):
        if ":" in linha:
            k, v = linha.split(":", 1)
            meta[k.strip()] = v.strip().strip('\'"')
    return meta, texto[m.end():]


def converte_arquivo(caminho):
    bruto = open(caminho, encoding="utf-8").read()
    meta, corpo = le_frontmatter(bruto)
    corpo = converte_text_box(corpo)
    corpo = converte_quiz(corpo)
    corpo = converte_img(corpo)
    corpo = limpa(corpo)
    return meta.get("title", ""), corpo.strip()


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)
    origem, destino = sys.argv[1], sys.argv[2]

    for cap in range(1, 8):
        pasta = os.path.join(origem, "chapter-%d" % cap)
        if not os.path.isdir(pasta):
            continue
        nn = "%02d" % cap
        saida_dir = os.path.join(destino, "Capitulo" + nn)
        img_dir = os.path.join(saida_dir, "img")
        os.makedirs(img_dir, exist_ok=True)

        # seções, na ordem numérica do nome do arquivo
        secoes = sorted(
            [f for f in os.listdir(pasta)
             if f.endswith(".md") and f != "index.md"],
            key=lambda f: int(re.match(r'(\d+)', f).group(1)) if re.match(r'\d', f) else 99
        )

        partes = []
        for f in secoes:
            titulo, corpo = converte_arquivo(os.path.join(pasta, f))
            partes.append("## %s\n\n%s" % (titulo, corpo))

        # imagens
        for f in os.listdir(pasta):
            if f.lower().endswith((".svg", ".png", ".jpg", ".jpeg")):
                shutil.copy2(os.path.join(pasta, f), os.path.join(img_dir, f))

        saida = os.path.join(saida_dir, "origem-en-capitulo%s.md" % nn)
        with open(saida, "w", encoding="utf-8") as fh:
            fh.write("\n\n".join(partes) + "\n")
        print("Capitulo%s: %d seções, %d palavras, %d imagens"
              % (nn, len(secoes),
                 len(" ".join(partes).split()),
                 len(os.listdir(img_dir))))


if __name__ == "__main__":
    main()
