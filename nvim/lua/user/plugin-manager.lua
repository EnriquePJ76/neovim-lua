
-- Lazy

local lazy = {}

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'


function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim ... ')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)

  require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end


-- Plugins

lazy.opts = {}

lazy.setup({
  --{ 'folke/tokyonight.nvim' },
  { 'tanvirtin/monokai.nvim' },

  { 'nvim-lualine/lualine.nvim' },

  { 'nvim-tree/nvim-web-devicons' },
  { 'nvim-tree/nvim-tree.lua' },
 
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {}
  },

  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'wellle/targets.vim' },
  { 'numToStr/Comment.nvim' },

  { 'tpope/vim-surround' },
  
  { 'BurntSushi/ripgrep' },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'akinsho/toggleterm.nvim',
    version='*',
    config=true
  },

  { 'tpope/vim-fugitive' },
  { 'lewis6991/gitsigns.nvim' },

  --{ 'neovim/nvim-lspconfig' },
  --{ 'hrsh7th/cmp-nvim-lsp' },

})


