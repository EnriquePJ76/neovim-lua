
--vim.cmd.colorscheme('tokyonight')
--vim.cmd.colorscheme('onedark')  -- Atom
vim.cmd.colorscheme('darkplus') -- VSCode
--vim.cmd.colorscheme('monokai')  -- Sublime Text

vim.opt.guifont=Hack


-- Indent

require('ibl').setup({
  enabled = true,
  scope = {
    enabled = false,
  },
  indent = {
    --char = '|',
    char = '▎',
  },
})


-- Status bar

vim.opt.showmode = false

require('lualine').setup({
  options = {
    --theme = 'tokyonight',
    --theme = 'onedark',  -- Atom
    theme = 'darkplus', -- VSCode
    --theme = 'monokai',  -- Sublime Text
    icons_enabled = true,
    --component_separators = '|',
    --section_separators = '',
    disable_filetypes = {
      statusline = { 'NvimTree', 'neo-tree' }
    }
  },
})


-- HighLight & code

require('Comment').setup({})

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



