#bartender challenge 

# orders
cocktail_count = 3
water_count = 2
beer_count = 6

#profit
cocktail_profit = 14
water_profit = 5.85 
beer_profit = 9 

puts "Hi there, what would you like to order? type cocktail, water or beer"
order = gets.chomp 

puts "How many would you like?"
ordernum = gets.to_i


if order == "cocktail"
    cocktail_count += ordernum 
elsif order == "water"
    water_count += ordernum
elsif order == "beer"
    beer_count += ordernum
else
    puts "Sorry, try again, we do not recognise this order!"
end

total_order = cocktail_count + beer_count + water_count
puts "Total drinks to make #{total_order}"


total_profit = 14 * cocktail_count + 9 * beer_count + 5.85 * water_count

puts cocktail_count
puts water_count
puts beer_count
puts "Total profit #{total_profit}"



