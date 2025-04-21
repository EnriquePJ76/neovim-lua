
local function toggleterm_size(term)
  if term.direction == 'horizontal' then
    return 25
  elseif term.direction == 'vertical' then
    return vim.o.columns * 0.4
  end
end

-- Shell
require('toggleterm').setup({
  open_mapping = '<C-t>',
  --direction = 'horizontal',
  direction = 'vertical',
  --direction = 'float',
  size = toggleterm_size,
  shade_terminals = true,
})


