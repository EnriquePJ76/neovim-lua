
-- SIDEBAR

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


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
  -- sshfs reload
  auto_reload_on_write = true,
  filesystem_watchers = {
    enable = false,
  },
})

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<F2>', '<cmd>NvimTreeToggle<cr>')

