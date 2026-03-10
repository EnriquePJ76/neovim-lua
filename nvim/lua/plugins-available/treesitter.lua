
return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
	auto_install = true,
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
	  'markdown',
        },
	indent = {
	  enabled = true,
	},
	autotag = {
	  enabled = true,
	}
      })
    end
  },
}

