def stock_picker(prices)
buy = 0
sell = 0
i=0
j=i+1
max_profit = 0

prices = [17,3,6,9,15,8,6,1,10]
	while i < prices.length
		while j < prices.length
			profit = prices[j] - prices[i]
			if profit > max_profit
				buy = i
				sell = j
				max_profit = profit
			end
			j+=1
		end
		i+=1
		j = i + 1
	end
dates = [buy, sell]
puts dates
end

puts "enter array for stock prices"
prices = gets.chomp.split(" ")
prices.map! { |e| e.to_i  }
stock_picker(prices)