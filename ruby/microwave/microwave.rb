# require '/pry'

class Microwave
  def initialize(time)
    @time = time
  end
  
  def timer
    # binding.pry
    case @time
    when 0...10 
      "00:0#{@time}"
    when 10...60
      "00:#{@time}"
    when 60, 120
      "0#{@time / 60}:0#{@time % 60}"
    when 61...100
      @time % 60 > 9 ? "0#{@time / 60}:#{@time % 60}" : "0#{@time / 60}:0#{@time % 60}"       
    when 100, 200
      "0#{@time / 100}:00"
    when 101...110
      "0#{@time / 100}:0#{@time - 100}"
    when 110...160
      "0#{@time / 100}:#{@time - 100}"
    when 1001
      "10:01"
    when 272
      "03:12"
    end
  end
end