require './bubble_sort.rb'

arr = Array.new(15) { rand(1..100)}
puts "Random Array: #{arr}\n"

test = BubbleSort.new(arr)
