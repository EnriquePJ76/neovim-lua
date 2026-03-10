
return {
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    version = 'v4.9.1',
    config = function()
      require('bufferline').setup({
        options = {
          mode = 'buffers',
          offsets = {
            { filetype = 'NvimTree' }, 
            { filetype = 'neo-tree' },
          },
        },
        highlights = {
          buffer_selected = {
            italic = false
          },
          indicator_selected = {
            fg = { attribute = 'fg', highlight = 'Function' },
            italic = false
          }
        }
      })
    end
  },
}

