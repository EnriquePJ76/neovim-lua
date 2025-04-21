
return {
  { 
    'neovim/nvim-lsconfig',
    'dependencies' = { 'hrsh7th/cmp-nvim-lsp' },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_cabilities()

      -- Listado de servidores de lenguaje
      local servers = { 
        'html',
        'cssls',
        'tsserver',
        'pyright',
        'lua_ls',
        'jsonls'
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          capabilities = capabilities,
        }
      end
    end,
  }
}

