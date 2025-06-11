require "libs.dualBoard.dualBoard"
require "libs.board"
require "libs.functions"

-- GRAPHICS
love.graphics.setDefaultFilter("nearest", "nearest")

function love.load()
  -- sprites
  scale = 4

  spritesheet = love.graphics.newImage "sprites/spritesheet.png"
  do -- boards
    local dimensions = 16
    dualBoard = initDualBoard(dimensions - 1)
    board = initBoard(dimensions)
  end

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
  board = initBoard(dimensions)

  local windowDim = (scale*dimensions-4)*8
  love.window.setMode(windowDim, windowDim)
end

function love.update(dt)
end

function love.draw()
  -- TEMPLATE
  -- 22 12 40
  love.graphics.clear(22/255, 12/255, 40/255)
  love.graphics.scale(scale)

  -- actual stuff:
  drawCells(spritesheet, dualBoard)
end
