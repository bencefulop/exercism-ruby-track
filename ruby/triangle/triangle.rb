class Triangle

  def initialize(sides)
    @sides = sides
    @a = @sides[0]
    @b = @sides[1]
    @c = @sides[2]
    
  end

  def equilateral?
    return false if not_valid_triangle?
    return false if sides_are_invalid?

    return true if @a == @b && @b == @c
  end
  
  def isosceles?
    return false if not_valid_triangle?
    return false if sides_are_invalid?
    
    case 
    when @a == @b && @b != @c then true
    when @a == @b && @b == @c then true
    when @a == @c && @c != @b then true
    when @b == @c && @c != @a then true
    end
    
  end
  
  def scalene?
    return false if not_valid_triangle?
    return false if sides_are_invalid?

    return true if @a != @b && @b != @c && @c != @a
  end

  private

  def not_valid_triangle?
    @a + @b < @c || @a + @c < @b || @b + @c < @a
  end

  def sides_are_invalid?
    @a.zero? || @b.zero? || @c.zero?
  end
end