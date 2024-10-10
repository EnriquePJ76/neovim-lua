
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
  -- Themes
  --{ 'folke/tokyonight.nvim' },
  --{ 'joshdick/onedark.vim' },   -- Atom
  { 'lunarvim/darkplus.nvim' }, -- VSCode
  --{ 'tanvirtin/monokai.nvim' }, -- Sublime Text

  -- NeoVim
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },

  -- Status Bar
  { 'nvim-lualine/lualine.nvim' },

  -- Tabs
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  -- Indent
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {}
  },

  -- Actions
  { 'wellle/targets.vim' },

  { 'numToStr/Comment.nvim' },
  { 'tpope/vim-surround' },
  
  -- Telescope
  { 'BurntSushi/ripgrep' },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Shell
  {
    'akinsho/toggleterm.nvim',
    version='*',
    config=true
  },

  -- Git
  { 'tpope/vim-fugitive' },
  { 'lewis6991/gitsigns.nvim' },


  -- IDE
  {
    "neoclide/coc.nvim",
    branch = "master",
    build = "yarn install --frozen-lockfile",
  },
  --{ 'neovim/nvim-lspconfig' },
  --{ 
  --  'hrsh7th/nvim-cmp',
  --  dependencies = { 'hrsh7th/cmp-nvim-lsp' }
  --},


  -- SIDEBAR

  { 'nvim-tree/nvim-web-devicons' },
  --{ 'nvim-tree/nvim-tree.lua' },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      {
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function()
          require 'window-picker'.setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
          },
        })
        end,
      }
    }
  }
 
})

