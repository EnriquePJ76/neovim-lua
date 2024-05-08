
require('lualine').setup({
  options = {
    theme = 'tokyonight',
    icons_enabled = false,
    --component_separators = '|',
    --section_separators = '',
    --disable_filetypes = {
    --  statusline = { 'NvimTree' }
    --}
  },
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
      italic = true
    },
  }
})

local function nvim_tree_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return {
      desc = 'nvim-tree: ' .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait
    }
  end

  local bufmap = function(lhs, rhs, desc)
    vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
  end

  -- defaults mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  --bufmap('<cr>', api.node.open.edit, 'Expand folder or go to file')
  --bufmap('L', api.node.open.edit, 'Expand folder or go to file')
  --bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
  --bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')

end

require('nvim-tree').setup({
  sort = {
    sorter = 'case_sensitive',
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  hijack_cursor = false,
  on_attach = nvim_tree_on_attach,
})

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<F2>', '<cmd>NvimTreeToggle<cr>')

require('toggleterm').setup({
  open_mapping = '<C-t>',
  --direction = 'horizontal',
  direction = 'vertical',
  size = 90,
  shade_terminals = true,
})

