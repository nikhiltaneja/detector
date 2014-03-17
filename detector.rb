class Detector
  attr_reader :dictionary

  def initialize(words)
    @dictionary = words
  end

  def detect(primary_word)
    dictionary.select do |word|
      unless equivalent?(word, primary_word)
        compare(word, primary_word)
      end
    end     
  end

  def equivalent?(first_word, second_word)
    first_word == second_word
  end

  def compare(first_word, second_word)
    first_word.chars.sort == second_word.chars.sort 
  end
end
