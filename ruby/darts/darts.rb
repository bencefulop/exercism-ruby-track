class Darts
  def initialize(x, y)
    @x = x
    @y = y
    @distance = Math.sqrt(@x ** 2 + @y ** 2).ceil
  end

  def score
    case @distance
    when 0..1 then 10
    when 2..5 then 5
    when 6..10 then 1
    else 0
    end
  end
end
