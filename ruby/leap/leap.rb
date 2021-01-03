
class Year
  def self.leap?(year)
    case 
    when year % 4 == 0 && year % 100 == 0 && year % 400 == 0
      true
    when year % 4 == 0 && year % 100 ==0
      false
    when year % 4 == 0
      true
    when year % 4 != 0
      false
    end

  end
end