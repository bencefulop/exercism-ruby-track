class Triangle
attr_reader :a, :b, :c
  def initialize(sides)
    @sides = sides
    @a = @sides[0]
    @b = @sides[1]
    @c = @sides[2]
    
  end

  def equilateral?
    return false if a == 0

    return true if a == b && b == c
  end
  
  def isosceles?
    if a == b && b != c 
      return true
    elsif a == c && c != b
      return true
    elsif b == c && c != a
      return true
    end
  end
end