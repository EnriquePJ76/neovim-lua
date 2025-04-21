
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require('lualine').setup({
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
      })
    end,
  },
}

