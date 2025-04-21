
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
    config = function()
      require('ibl').setup({
        enabled = true,
        scope = {
          enabled = false,
        },
        indent = {
          --char = '|',
          char = '▎',
        },
      })
    end
  },
}

