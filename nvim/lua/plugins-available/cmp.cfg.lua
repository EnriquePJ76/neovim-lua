
return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'onsails/lspkind.nvim',
      'saadparwaiz1/cmp_luasnip'
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      cmp.setup({
        -- Ventana para mostrar el autocompletado y su documentación
        window = {
          completion = cmp.config.window,
          documentation = cmp.config.window,
        },

        -- Origenes
        sources = cmp.config.sources({
          {name = "nvim_lsp"},
          {name = "luasnip", option = {show_autosnippets = true}}
        }),

        -- Atajos de teclado
        mapping = {
          -- Enter acepta la sugerencia
          ["<CR>"] = function(fallback)
            if cmp.visible() then
                cmp.confirm()
            else
                fallback()
            end
          end,

          -- La tecla arriba selecciona la anterior sugerencia
          ["<Up>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
          end,

          -- La tecla abajo selecciona la siguiente sugerencia
          ["<Down>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
          end,
        },

        -- Formato de la ventana
        formatting = {
          format = lspkind.cmp_format({
            width_text = false,
            mode = "symbol", -- Muestra solo los símbolos
            maxwidth = 50
          })
        },

        -- Snippets
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        }
      })
    end,
  },
}

