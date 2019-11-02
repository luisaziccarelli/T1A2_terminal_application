# Wishlist app 

wishlist = 0 

products = [
    "shoes" , "socks" , "dress" , "shirts" 
]

puts "What products would you like to add to your shopping list?"

costumer_pick = gets.chomp.to_s

while 
    puts "Your item has been added! What else would you like add?"
    wishlist += 1  
end 

#def basket(product1, product2)
#list of products
#wishlist adds products
#a loop to keep the app running that simply asks for user input
#a method with a parameter that adds the user input to an array
#a method to display the contents of an array