class Cell
  def initialize(field, x, y)
    @field, @x, @y = field, x, y
    @live = false
  end

  def live?
    @live
  end

  def live!
    @live = true
  end

  def death!
    @live = false
  end

  def neighbours
    neighbours = []
    # Es para revisar los vecinos de la izquierda
    neighbours.push(@field.cell_place(self.x - 1, self.y - 1))
    neighbours.push(@field.cell_place(self.x - 1, self.y))
    neighbours.push(@field.cell_place(self.x - 1, self.y + 1))
    # El siguiente revisa los vecinos de arriba y de abajo
    neighbours.push(@field.cell_place(self.x, self.y - 1))
    neighbours.push(@field.cell_place(self.x, self.y + 1))
    # Es para revisar los vecinos de la derecha
    neighbours.push(@field.cell_place(self.x + 1, self.y - 1))
    neighbours.push(@field.cell_place(self.x + 1, self.y))
    neighbours.push(@field.cell_place(self.x + 1, self.y + 1))

    neighbours
  end
end
