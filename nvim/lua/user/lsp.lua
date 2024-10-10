
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

--vim.api.nvim_create_autocmd('FileType', {
--  -- This handler will fire when the buffer's 'filetype' is "python"
--  pattern = 'python',
--  callback = function(ar
--  vim.lsp.start({
--    name = 'my-server-name',
--    cmd = { 'name-of-language-server-executable', '--option', 'arg1', 'arg2' },
--    -- Set the "root directory" to the parent directory of the file in the
--    -- current buffer (`args.buf`) that contains either a "setup.py" or a
--    -- "pyproject.toml" file. Files that share a root directory will reuse
--    -- the connection to the same LSP server.
--    root_dir = vim.fs.root(args.buf, {'setup.py', 'pyproject.toml'}),
--  })
--})


local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.pyright.setup({})


