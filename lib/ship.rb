class Ship

  attr_accessor :x
  attr_accessor :y
  attr_accessor :orientation
  attr_accessor :size

  def initialize size
    fail 'Wrong size ship' if size >= 5 || size <= 1
    @on_board = false
    @size = size
  end

  def placed?
    @on_board
  end

  def coordinates x, y, orientation
    @x = x
    @y = y
    @orientation = orientation.to_s
  end

  def display
    if (@orientation == "horizontal")
      "(#{ @x },#{ @y }) to (#{ @x + (@size - 1) },#{ @y })" 
    elsif (@orientation == "vertical")
      "(#{ @x },#{ @y }) to (#{ @x },#{ @y + (@size - 1 )})"
    end
  end
  
  def place 
    @on_board = true
  end

end