
--vim.cmd.colorscheme('tokyonight')
vim.cmd.colorscheme('monokai')

vim.opt.guifont=Hack

require('ibl').setup({
  --enabled = false,
  scope = {
    enabled = false,
  },
  indent = {
    char = '|',
  },
})

require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
    'python',
    'css',
    'html',
    'json',
    'javascript',
    'typescript',
    'lua',
    'tsx',
  }
})

require('Comment').setup({})


