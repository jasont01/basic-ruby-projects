require './sub_strings.rb'

dictionary = File.readlines("dictionary.dat", chomp: true)


random_word = dictionary.sample
puts "Single Word: #{random_word}"
puts substrings(random_word, dictionary)


random_words = dictionary.sample(rand(2..20)).join(" ")
puts "Multiple Words: #{random_words}"
puts substrings(random_words, dictionary)