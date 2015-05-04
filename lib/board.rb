class Board

  attr_reader :grid

  def initialize
    @grid = {A1: :w}
  end

  def place_ship(ship, location)
    grid[location] = ship
  end

end