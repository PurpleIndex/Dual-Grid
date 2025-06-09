require "libs.dualBoard.dualBoard"
require "libs.board"

function love.load()
  do -- boards
    local dimensions = 16
    dualBoard = initDualBoard(dimensions - 1)
    board = initBoard(dimensions)
  end
end

function love.update(dt)
end

function love.draw()
end
