
class Acronym
  def self.abbreviate(sentence)
    sentence.scan(/\b[a-zA-Z]/).map { |word| word[0].upcase }.join
   end
end