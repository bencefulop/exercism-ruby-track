class Matrix
  attr_reader :rows, :columns

  def initialize(numbers)
    @numbers = numbers.split("\n")
    @rows = extract_rows(@numbers)
    @columns = extract_columns(@numbers)
  end

  def extract_rows(numbers)
    numbers.map { |n| n.split("\s") }.map { |e| e.map(&:to_i) }
  end

  def extract_columns(_numbers)
    columns_array = Array.new(@rows.first.length) { [] }

    @rows.each do |row|
      row.each_with_index do |num, i|
        columns_array[i] << num
      end
    end
    columns_array
  end
end
