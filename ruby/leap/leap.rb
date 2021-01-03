
class Year
  def self.leap?(year)
    return true if self.can_be_divided_by_4_and_100_and_400(year)
    return false if self.can_be_divided_by_4_and_100(year)
    return true if self.can_be_divided_by_4(year)
    return false if self.cannot_be_divided_by_4(year)
  end
  
  private

  def self.can_be_divided_by_4_and_100_and_400(year)
    self.can_be_divided_by_4_and_100(year) && year % 400 == 0
  end

  def self.can_be_divided_by_4_and_100(year)
    self.can_be_divided_by_4(year) && year % 100 == 0
  end
  
  def self.can_be_divided_by_4(year)
    year % 4 == 0
  end

  def self.cannot_be_divided_by_4(year)
    year % 4 != 0
  end
end