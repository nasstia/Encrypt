class Caesar < ApplicationRecord

  attr_accessor :word
  attr_accessor :count
  ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  def caesar
    self.word = self.word.split("")
    self.word.map! do |letter|
      if !ALPHABET[ALPHABET.index(letter) + self.count.to_i].nil?
        ALPHABET[ALPHABET.index(letter) + self.count.to_i]
      else
        ALPHABET[(ALPHABET.count + self.count.to_i) - ALPHABET.count - 1]
      end
    end
    self.word = self.word.join("")
    return self.word
  end

  def brutus
   self.word = self.word.split("")
   self.word.map! do |letter|
     if !ALPHABET[ALPHABET.index(letter) - self.count.to_i].nil?
       ALPHABET[ALPHABET.index(letter) - self.count.to_i]
     else
       ALPHABET[(ALPHABET.count - self.count.to_i) + ALPHABET.count + 1]
     end
  end
    self.word = self.word.join("")
    return self.word
  end

end
