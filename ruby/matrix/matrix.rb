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
    counter = 0
    columns_array = Array.new(@rows.first.length) {Array.new()}

    @rows.each do |row| 
      row.each_with_index do |num, i|
        # push each item to the columns array based on their index
        # binding.pry
        columns_array[i] << num
      end
    end
    columns_array
  end
end
