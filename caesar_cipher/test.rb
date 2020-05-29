require './caesar_cipher.rb'

random_word = File.readlines("dictionary.dat").sample
puts "Random Word: #{random_word}"

random_shift = rand(1..100)
puts "Random Shift: #{random_shift}"

test = CaesarCipher.new(random_word, random_shift)

puts "Encrypted: #{test.encrypt}"

test2 = CaesarCipher.new(test.encrypt, test.shift)
puts "Decrypted: #{test2.decrypt}"