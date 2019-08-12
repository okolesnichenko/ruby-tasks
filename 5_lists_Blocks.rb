prices = [2.99, 25.00, 9.99]


def total(prices)
	sum = 0
	prices.each {|price| sum += price }
	return sum
end

def refund(prices)
	sum = 0
	prices.each {|price| sum -= price }
	return sum
end

def show_discounts(prices)
	prices.each do | price |
		amount_off = price / 3.0
		puts format("Your discount: $%.2f", amount_off)
	end
end

puts total(prices)