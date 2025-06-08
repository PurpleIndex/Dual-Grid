local newQuad = love.graphics.newQuad
local size = 8
local dim = 32
local M = {
  types = {
  --  ..  .#  #.  ..
  --  #.  .#  ##  ##
    ['0010'] = newQuad(
      size * 0, size * 0,
      size, size,
      dim,dim
    )
    ,['0101'] = newQuad(
      size * 1, size * 0,
      size, size,
      dim, dim
    )
    ,['1011'] = newQuad(
      size * 2, size * 0,
      size, size,
      dim, dim
    )
    ,['0011'] = newQuad(
      size * 3, size * 0,
      size, size,
      dim, dim
    )

  --  #.  .#  ##  ##
  --  .#  ##  ##  #.
    ,['1001'] = newQuad(
      size * 0, size, * 1
      size, size,
      dim, dim
    )
    ,['0111'] = newQuad(
      size * 1, size * 1,
      size, size,
      dim, dim
    )
    ,['1111'] = newQuad(
      size * 2, size * 1,
      size, size,
      dim, dim
    )
    ,['1110'] = newQuad(
      size * 3, size * 1,
      size, size,
      dim, dim
    )

  --  .#  ##  ##  #.
  --  ..  ..  .#  #.
    ,['0100'] = newQuad(
      size * 0, size * 2,
      size, size,
      dim, dim
    )
    ,['1100'] = newQuad(
      size * 1, size * 2,
      size, size,
      dim, dim
    )
    ,['1101'] = newQuad(
      size * 2, size * 2,
      size, size,
      dim, dim
    )
    ,['1010'] = newQuad(
      size * 3, size * 2,
      size, size,
      dim, dim
    )

  --  ..  ..  .#  #.
  --  ..  .#  #.  ..
    ,['0000'] = newQuad(
      size * 0, size * 3,
      size, size,
      dim, dim
    )
    ,['0001'] = newQuad(
      size * 1, size * 3,
      size, size,
      dim, dim
    )
    ,['0110'] = newQuad(
      size * 2, size * 3,
      size, size,
      dim, dim
    )
    ,['1000'] = newQuad(
      size * 3, size * 3,
      size, size,
      dim, dim
    )
  }

  ,new = function(self, x, y, cellType)
    local newCell = {}
    -- TODO
    -- local type = cellType or '0000'
  end
}
return M
