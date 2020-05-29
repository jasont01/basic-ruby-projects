def stock_picker(prices)
  best_roi = 0
  best_days = []
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day
      roi = sell_price - buy_price
      if roi > best_roi
        best_days = [buy_day, sell_day]
        best_roi = roi
      end
    end
  end
  best_days
end