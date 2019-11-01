# Wishlist app 

puts "What would you like to add to your shopping list?"

user_input = gets.chomp.to_s

while user_input < 0 
    puts "Your item has been added! What else would you like add?"
end 


#a loop to keep the app running that simply asks for user input
#a method with a parameter that adds the user input to an array
#a method to display the contents of an array