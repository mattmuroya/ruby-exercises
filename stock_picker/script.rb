def stock_picker(prices)
  lowest_price = prices[0]
  lowest_price_day = 0
  max_profit = 0

  best_day_to_buy_and_sell = [0, 0]

  prices.each_with_index do |price, i|
    if price < lowest_price
      lowest_price = price
      lowest_price_day = i
    end
    if price - lowest_price > max_profit
      max_profit = price - lowest_price
      best_day_to_buy_and_sell = [lowest_price_day, i]
    end
  end
  best_day_to_buy_and_sell
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
