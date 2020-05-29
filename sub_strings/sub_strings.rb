def substrings(text, dictionary)
  result = Hash.new(0)

  text.split(" ").each do |word|
    dictionary.each do |substring|
      next if substring.length == 1  #Dictionary contaions two entries for each letter. i.e. A,a,B,b...
      substring.downcase!
      result[substring] += 1 if word.downcase.include? substring
    end
  end
  result
end