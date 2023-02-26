def stock_picker(days)
  profit = 0
  best_days = []

  days.each_with_index do |day, index|
    remaining_days = days[index..-1]
    sell_price = remaining_days.max

    if (sell_price - day) > profit
      best_days = [index, days.find_index(sell_price)]
      profit = sell_price - day
    end
  end

  return best_days
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
