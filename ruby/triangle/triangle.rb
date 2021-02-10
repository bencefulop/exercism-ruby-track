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
    
  return false if a + b < c || a + c < b || b + c < a

    if a == b && b != c 
      return true
    elsif a == b && b == c
      return true
    elsif a == c && c != b
      return true
    elsif b == c && c != a
      return true
    end

  end

  def scalene?
    return false if a + b < c || a + c < b || b + c < a


    return true if a != b && b != c && c != a
  end
end