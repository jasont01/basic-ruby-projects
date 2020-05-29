#Caesar-Cipher
#Project for theodinproject.com

class CaesarCipher
  attr_accessor :word, :shift

  def initialize(word, shift = 0)
    @word = word.to_s
    @shift = shift
  end

  def encrypt
    @word.chars.map do |letter|
      if (letter.ord >= 97 && letter.ord <= 122)
        ((letter.ord - 97 + @shift) % 26 + 97).chr
      elsif (letter.ord >= 65 && letter.ord <= 90)
        ((letter.ord - 65 + @shift) % 26 + 65).chr
      else
        letter
      end
    end.join()
  end

  def decrypt
    @shift = -@shift
    encrypt
  end
end