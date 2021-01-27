class Pangram
  LETTERS = ("a".."z").to_a
  
  def self.pangram?(sentence)
    (LETTERS - (sentence.downcase.chars)).empty?
  end
end
