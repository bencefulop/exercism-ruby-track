class Pangram
  LETTERS = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  def self.pangram?(sentence)
    (LETTERS - (sentence.chars)).empty?
  end
end
