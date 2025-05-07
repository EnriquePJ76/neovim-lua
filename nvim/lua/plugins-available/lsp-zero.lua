return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      --{'hrsh7th/cmp-buffer'},       -- Optional
      --{'hrsh7th/cmp-path'},         -- Optional
      --{'saadparwaiz1/cmp_luasnip'}, -- Optional
      --{'hrsh7th/cmp-nvim-lua'},     -- Optional

    }
  }
}
