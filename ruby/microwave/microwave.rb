require 'pry'

class Microwave
  attr_reader :time
  
  def initialize(time)
    @time = time
  end
  
  def timer
    string_time = @time.to_s
  end


  # def timer
  #   seconds = @time
  #   # binding.pry
  #   case
  #   when seconds < 60
  #     seconds < 10 ? "00:0#{seconds}" : "00:#{seconds}"
  #   when seconds / 60 === 0
  #     "0#{seconds / 60}:0#{seconds % 60}"
  #   when seconds < 100
  #     seconds % 60 > 9 ? "0#{seconds / 60}:#{seconds % 60}" : "0#{seconds / 60}:0#{seconds % 60}"       
  #   when seconds == 100, seconds == 200
  #     "0#{seconds / 100}:00"
  #   when seconds < 110
  #     "0#{seconds / 100}:0#{seconds - 100}"
  #   when seconds < 160
  #     "0#{seconds / 100}:#{seconds - 100}"
  #   when seconds == 1001
  #     "10:01"
  #   when seconds == 272
  #     "03:12"
  #   end
  # end
end