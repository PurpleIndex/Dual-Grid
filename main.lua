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
end

function love.update(dt)
end

function love.draw()
  -- TEMPLATE
  love.graphics.clear()
  love.graphics.scale(scale)

  -- actual stuff:
  drawCells(spritesheet, dualBoard)
end
