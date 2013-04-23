# require_relative '../../config/environment'

class Word < ActiveRecord::Base
  attr_reader :anagrams
  # Remember to create a migration!

 
  def is_anagram?(word1, word2)
    word1 = word1.downcase
    word2 = word2.downcase
    (word1.split('') - word2.split('')).empty?
  end

  # p is_anagram?("ceat", "cta") 
  def anagrams_for(word, dictionary)
   dictionary.select { |item| is_anagram?(word, item) }
  end

end

