require './stockpicker.rb'

random_prices = Array.new(rand(5..20)) { rand(1..100) }
puts "Prices: #{random_prices}"
p stock_picker(random_prices)