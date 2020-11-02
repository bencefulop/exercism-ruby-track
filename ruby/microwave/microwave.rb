class Microwave
  
  def initialize(time)
    @time = time
  end

  def timer
    seconds = @time.to_s
    case seconds.length
    when 1 then "00:0#{seconds}"
    when 2
      if @time % 60 == 0
        convert_to_minutes
      elsif @time < 60
        "00:#{seconds}"
      else
        @time % 60 > 9 ? "0#{@time / 60}:#{@time % 60}" : "0#{@time / 60}:0#{@time % 60}"
      end
    when 3
      if @time % 60 == 0
        convert_to_minutes
      else seconds[1].to_i > 5
      # else 

      end
    when 4
      if @time % 60 == 0
      convert_to_minutes
      else
        seconds[1] += ":"
        seconds
      end
    end
  end

  def convert_to_minutes
    if @time / 60 < 10
      "0#{@time / 60}:00"
    else
      "#{@time / 60}:00"
    end
  end




  # def timer
  #   seconds = @time
  #   case
  #   when seconds < 60
  #     seconds < 10 ? "00:0#{seconds}" : "00:#{seconds}"
  #   when seconds / 60 == 0
  #     "0#{seconds / 60}:0#{seconds % 60}"
  #   when seconds < 100
  #     seconds % 60 > 9 ? "0#{seconds / 60}:#{seconds % 60}" : "0#{seconds / 60}:0#{seconds % 60}"       
  #   when seconds == 100, seconds == 200
  #     "0#{seconds / 100}:00"
  #   when seconds < 110
  #     "0#{seconds / 100}:0#{seconds - 100}"
  #   when seconds < 160
  #     "0#{seconds / 100}:#{seconds - 100}"
  #   when (seconds.to_s).length == 4
  #     string_seconds = (seconds.to_s)
  #     string_seconds[1] += ":"
  #     string_seconds
  #   when seconds == 272
  #     "03:12"
  #   end
  # end
end