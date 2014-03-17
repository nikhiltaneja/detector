class Detector
  attr_reader :dictionary

  def initialize(dictionary)
    @dictionary = dictionary
  end

  def detect(original_word)
    sorted_word = sort_word(original_word)
    find_anagrams(sorted_word, original_word)   
  end

  def sort_word(word)
    word.chars.sort.join()
  end

  def find_anagrams(sorted_word, original_word)
    anagrams = dictionary[sorted_word]
    anagrams.reject do |anagram|
      anagram == original_word
    end
  end
end
