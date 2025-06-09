function initBoard(dim, cellType)
  local M = {}
  -- ctype can either be 0 or 1. 0 means empty. 1 means full.
  local ctype = cellType or 0
  for y=1, dim do
    table.insert(M, {})
    for x=1, dim do
      table.insert(M[y], ctype)
    end
  end
  return M
end
