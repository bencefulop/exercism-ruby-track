require 'pry'

class Matrix

  attr_reader :rows

  def initialize(numbers)
    @numbers = numbers
    @rows = extract_rows(@numbers)
  end

  def extract_rows(numbers)
    elements = numbers.split("\n")
    result = elements.map{ |n| n.split("\s") }
    result.map {|e| e.map {|n| n.to_i}}
    
  end
end
