require 'cells'
class Game
  def initialize(width, height)
    @cells = []
    height.times do |x|
      @cells.push ([])
      width.times do |y|
        @cells[x].push(Cell.new(self, x, y))
      end
    end
  end

  def cell_place(x,y)
    if @cells[x]
    @cells[x][y]
  end
end
