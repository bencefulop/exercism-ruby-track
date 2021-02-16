require 'pry'

class Matrix

  attr_reader :rows

  def initialize(numbers)
    @numbers = numbers.split
    @rows = extract_rows(@numbers)
    # binding.pry
    # // TODO // 
    # need to save @rows and @colums. need attr_readers too
  end

  def extract_rows(numbers)
    array = number.split.map {|n| n.to_i }
    
  end
end
