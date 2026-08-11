--[[ =======================================================================
  Ética da IA — filtro pandoc para os blocos de apoio
  ------------------------------------------------------------------------
  No markdown escrevemos:

      ::: {.filosofia data-titulo="Os três subcampos da ética"}
      texto
      :::

  No HTML o pandoc gera <div class="filosofia" data-titulo="...">, e o
  ia-style.css desenha a caixa e o rótulo (via content: attr(data-titulo)).

  No LaTeX uma div viraria nada, então aqui a convertemos no ambiente
  correspondente, definido em ia-header.tex:

      \begin{filosofia}[Os três subcampos da ética] texto \end{filosofia}

  Os quatro primeiros tipos espelham os ícones do material original
  (philIcon, techIcon, bgIcon, exerIcon); os demais são nossos.

  Uso:  pandoc ... --lua-filter=assets/blocos.lua
======================================================================= ]]--

local ambientes = {
  filosofia = true,   -- philIcon — conceito ou argumento filosófico
  tecnica   = true,   -- techIcon — explicação técnica
  contexto  = true,   -- bgIcon   — contexto histórico ou de fundo
  definicao = true,   -- exerIcon — definição formal
  nota      = true,
  caso      = true,
  reflexao  = true,
  licenca   = true,
}

-- Caracteres que o LaTeX interpreta e que podem aparecer num título.
local function escapa_latex(s)
  s = s:gsub("\\", "\\textbackslash{}")
  s = s:gsub("([&%%%$#_{}])", "\\%1")
  s = s:gsub("~", "\\textasciitilde{}")
  s = s:gsub("%^", "\\textasciicircum{}")
  return s
end

function Div(el)
  if not FORMAT:match("latex") then
    return nil          -- no HTML a div passa intacta; quem desenha é o CSS
  end
  for _, classe in ipairs(el.classes) do
    if ambientes[classe] then
      local titulo = el.attributes["data-titulo"]
      local abre
      if titulo and titulo ~= "" then
        abre = "\\begin{" .. classe .. "}[" .. escapa_latex(titulo) .. "]"
      else
        abre = "\\begin{" .. classe .. "}"
      end
      return {
        pandoc.RawBlock("latex", abre),
        pandoc.Div(el.content),
        pandoc.RawBlock("latex", "\\end{" .. classe .. "}"),
      }
    end
  end
  return nil
end
