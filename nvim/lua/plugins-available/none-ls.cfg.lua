
return {
  'nvimtools/none-ls.nvim',
  config = function()
    -- Asignamos la variable nls para que cargue la función
    local nls = require("null-ls")

    nls.setup({
      sources = {
        -- Aquí se irán añadiendo los formateadores, linters y acciones de código
        nls.builtins.formatting.stylua, -- Formateador para Lua
        --nls.builtins.formatting.prettierd, -- Formateador para JS/TS
        --nls.builtins.formatting.black, -- Formateador para Python

        --nls.builtins.diagnostics.eslint_d, -- Linter para JavaScript/TypeScript
        nls.builtins.diagnostics.pylint, -- Linter para Python

        nls.builtins.completion.spell, -- Autocompletado de ortografía
        nls.builtins.code_actions.refactoring, -- Refactorización
      }
    })
  end,
}

