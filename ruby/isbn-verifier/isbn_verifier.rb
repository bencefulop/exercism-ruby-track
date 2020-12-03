require 'pry'

class IsbnVerifier
  def self.valid?(number)
    number.gsub!("-", "")
    return false unless number =~ /^\d{9}[\d|X]$/

    number.split("").each_with_index.map do |e, i|
        e = "10" if e == "X"
       (e.to_i * (10 - i))
    end.sum % 11 == 0
  end
end
