function drawCells(spritesheet, dualBoard)
  for tblY, tbl in pairs(dualBoard) do
    for tblX, val in pairs(tbl) do
      love.graphics.draw(
        spritesheet,
        val.type,
        val.screenX,
        val.screenY
      )
    end
  end
end

function updateCells(board, dualBoard)
  for y, tbl in pairs(dualBoard) do
    for x, val in pairs(tbl) do
      local neighbours = val:findNeighbours(board)
      val.type = val.types[neighbours]
    end
  end
end
