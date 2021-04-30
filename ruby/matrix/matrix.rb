class Matrix

  def initialize(numbers)
    @numbers = numbers
  end

  def rows
    @rows ||= @numbers.each_line.map(&:split).map { |e| e.map(&:to_i) }
  end

  def columns
    @columns ||= rows.transpose
  end
end
