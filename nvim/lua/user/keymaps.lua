
-- Leader
vim.g.mapleader = ' '

-- Main
vim.keymap.set('n', '<space>w', '<cmd>write<cr>', { desc = 'Save' })

-- Clipboard
vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

-- Telescope
vim.keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
--vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

-- Neo-tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')
vim.keymap.set('n', '<F2>', '<cmd>Neotree toggle<cr>')

-- Neo-tree open when init
vim.api.nvim_create_autocmd(
  'VimEnter',
  {
    pattern='*',
    callback=function()
      vim.cmd('Neotree reveal')
    end,
  }
)

local function get_buffers()
  local buffers = {}
  local len = 0

  for buffer = 1, vim.fn.bufnr('$') do
    local is_listed = vim.fn.buflisted(buffer) ~= 1

    if is_listed then
      len = len + 1
      table.insert(buffers, buffer)
    end
  end

  return buffers
end
--
--function get_bufs_loaded()
--  local bufs_loaded = {}
--
--  for i, buf_hndl in ipairs(vim.api.nvim_list_bufs()) do
--    if vim.api.nvim_buf_is_loaded(buf_hndl) then
--      bufs_loaded[i] = buf_hndl
--    end
--  end
--
--  return bufs_loaded
--end

-- Filesystem windows (Neo-tree) close when it is the only window
--vim.api.nvim_create_autocmd(
--  'BufEnter',
--  {
--    nested = true,
--    callback = function()
--      --print(#vim.api.nvim_list_wins())
--      --print(vim.api.nvim_list_wins())
--      --print(vim.fn.bufnr('$'))
--      --print(vim.api.nvim_list_bufs())
--      
--      t = get_buffers()
--      --t = get_bufs_loaded()
--      print(type(t))
--      print(#t)
--      for k,v in pairs(t) do
--        print(k .. ' = ' .. v)
--      end
--
--      --print(len(filter(range(1, vim.fn.bufnr('$')), 'buflisted(v:val)')))
--      --print(range(1, vim.fn.bufnr('$')))
--      --
--      --if #vim.api.nvim_list_wins() == 1 then
--      --  if string.find(vim.api.nvim_buf_get_name(0), "filesystem") then
--      --    print('quit')
--      --    --vim.cmd "quit"
--      --  end
--      --end
--      --if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("neo-tree") ~= nil then
--      --  vim.cmd "quit"
--      --end
--    end,
--  }
--)

-- Formatter
vim.keymap.set(
  'n',
  '<leader>f',
  ':lua vim.lsp.buf.format()<cr>',
  { silent = true, desc = 'Formatear documento'}
)

