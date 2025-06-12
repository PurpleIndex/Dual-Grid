-- shortcut
local newQuad = love.graphics.newQuad

-- sizings
local size = 8
local dim = 32

local M = {
  types = {
  --  ..  .#  #.  ..
  --  #.  .#  ##  ##
    ["0010"] = newQuad(
      size * 0, size * 0,
      size, size,
      dim,dim
    )
    ,["0101"] = newQuad(
      size * 1, size * 0,
      size, size,
      dim, dim
    )
    ,["1011"] = newQuad(
      size * 2, size * 0,
      size, size,
      dim, dim
    )
    ,["0011"] = newQuad(
      size * 3, size * 0,
      size, size,
      dim, dim
    )

  --  #.  .#  ##  ##
  --  .#  ##  ##  #.
    ,["1001"] = newQuad(
      size * 0, size * 1,
      size, size,
      dim, dim
    )
    ,["0111"] = newQuad(
      size * 1, size * 1,
      size, size,
      dim, dim
    )
    ,["1111"] = newQuad(
      size * 2, size * 1,
      size, size,
      dim, dim
    )
    ,["1110"] = newQuad(
      size * 3, size * 1,
      size, size,
      dim, dim
    )

  --  .#  ##  ##  #.
  --  ..  ..  .#  #.
    ,["0100"] = newQuad(
      size * 0, size * 2,
      size, size,
      dim, dim
    )
    ,["1100"] = newQuad(
      size * 1, size * 2,
      size, size,
      dim, dim
    )
    ,["1101"] = newQuad(
      size * 2, size * 2,
      size, size,
      dim, dim
    )
    ,["1010"] = newQuad(
      size * 3, size * 2,
      size, size,
      dim, dim
    )

  --  ..  ..  .#  #.
  --  ..  .#  #.  ..
    ,["0000"] = newQuad(
      size * 0, size * 3,
      size, size,
      dim, dim
    )
    ,["0001"] = newQuad(
      size * 1, size * 3,
      size, size,
      dim, dim
    )
    ,["0110"] = newQuad(
      size * 2, size * 3,
      size, size,
      dim, dim
    )
    ,["1000"] = newQuad(
      size * 3, size * 3,
      size, size,
      dim, dim
    )
  }

  ,new = function(self, x, y, cellType)
    local newCell = {}
    newCell.type = self.types[cellType] or self.types["0000"]

    -- since all sprites are 8x8 we scale it by 8x8
    newCell.screenX, newCell.screenY = (x - 1) * 8 - 4, (y - 1) * 8 - 4
    newCell.x, newCell.y = x, y

    return setmetatable(newCell, {__index = self})
  end

  ,findNeighbours = function(self, board)
    --[[
      OFFSET:
      -0.5 dualBoard = &
      ...0 board = #
      both = @
      none = .
      ##    ##
      #@    @#
        \  /
         &&
         &&
        /  \
      #@    @#
      ##    ##
    --]]

    local upLeft    = board[self.y - 1][self.x - 1]
    local upRight   = board[self.y - 1][self.x    ]
    local downLeft  = board[self.y    ][self.x - 1]
    local downRight = board[self.y    ][self.x    ]

    if not upLeft    then upLeft    = 0 end
    if not upRight   then upRight   = 0 end
    if not downLeft  then downLeft  = 0 end
    if not downRight then downRight = 0 end

    return upLeft..upRight..downLeft..downRight
  end
}

return M
