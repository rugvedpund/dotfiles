function IsInMathContext()
  local node = require('nvim-treesitter.ts_utils').get_node_at_cursor()
  while node do
    local node_type = node:type()
    if node_type == 'inline_formula' or node_type == 'displayed_equation' or node_type == 'math_environment' then
      return true
    end
    node = node:parent()
  end
  return false
end

vim.cmd 'command! IsInMathContext lua IsInMathContext()'
