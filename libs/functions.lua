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
