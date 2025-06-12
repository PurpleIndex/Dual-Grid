require "libs.dualBoard.dualBoard"
require "libs.board"
require "libs.functions"

-- GRAPHICS
love.graphics.setDefaultFilter("nearest", "nearest")

function love.load()
  -- sprites
  scale = 4

  spritesheet = love.graphics.newImage "sprites/spritesheet.png"

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
  local dimensions = 16
  dualBoard = initDualBoard(dimensions)
  board = initBoard(dimensions - 1)

  board[1][1] = 0
  board[2][2] = 0
  local windowDim = (scale*dimensions-4)*8
  love.window.setMode(windowDim, windowDim)
end

function love.update(dt)
  updateCells(board, dualBoard)
end

function love.draw()
  -- TEMPLATE
  -- 22 12 40
  love.graphics.clear(22/255, 12/255, 40/255)
  love.graphics.scale(scale)

  -- actual stuff:
  drawCells(spritesheet, dualBoard)
end
