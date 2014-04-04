class Rectangle

  attr_accessor :colour

  def initialize(width, height, saver)
    @width = width
    @height = height
    @saver = saver
  end

  def area
    return @width * @height
  end

  def save
    @saver.save({type: "Rectangle",
                  width: @width,
                  height: @height,
                  area: area,
                  colour: colour})
  end


end