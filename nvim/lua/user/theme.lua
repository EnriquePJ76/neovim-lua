
vim.cmd.colorscheme('tokyonight')

require('lualine').setup({
  options = {
    icons_enabled = false,
    --component_separators = '|',
    --section_separators = '',
  }
})

require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = {
      { filetype = 'NvimTree' }
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    --indicator_selected = {
    --  fg = { attribute = 'fg', hithlight = 'Function' },
    --  italic = false
    --}
  }
})

require('ibl').setup({
  --enabled = false,
  --scope = {
  --  enabled = false,
  --},
  indent = {
    char = '|',
  },
})

require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
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

--require('nvim-tree').setup({
--  hijack_cursor = false,
--  on_attach = function(bufnr)
--    local bufmap = function(lhs, rhs, desc)
--      vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
--    end
--
--    -- See :help nvim-tree.api
--    local api = require('nvim-tree.api')
--   
--    bufmap('L', api.node.open.edit, 'Expand folder or go to file')
--    bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
--    bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
--  end
--})
require('nvim-tree').setup()
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

require('toggleterm').setup({
  open_mapping = '<C-g>',
  direction = 'horizontal',
  shade_terminals = true,
})

