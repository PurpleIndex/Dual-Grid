function initDualBoard(dim, cellType)
  local cells = require "libs.dualBoard.cell"
  local M = {}

  local ctype = cellType or '0000'
  for y=1, dim do
    table.insert(M, {})
    for x=1, dim do
      table.insert(M[y], cells:new(x, y, ctype))
    end
  end

  return M
end
