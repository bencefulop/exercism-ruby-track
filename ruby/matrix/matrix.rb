require 'pry'

class Matrix

  attr_reader :rows, :columns

  def initialize(numbers)
    @numbers = numbers.split("\n")
    @rows = extract_rows(@numbers)
    @columns = extract_columns(@numbers)
  end

  def extract_rows(numbers)
    numbers.map { |n| n.split("\s") }.map { |e| e.map { |n| n.to_i } }
  end

  def extract_columns(numbers)
    # @rows.map do |row|
    #   row.map.with_index do |n,i|
        
    #   end
    # end
    counter = 0
    result = @rows.map.with_index do |n,i| 
      # binding.pry
      n[counter]
      counter += 1
    end
    result
  end
end
