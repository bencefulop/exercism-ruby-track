class Matrix

  def initialize(numbers)
    @numbers = numbers
  end

  def rows
    rows ||= @numbers.split("\n").map(&:split).map { |e| e.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
