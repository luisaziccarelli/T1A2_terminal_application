
puts "What is your name?"
name = gets.strip 
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i
puts "Wow! You are #{age} years old. Congratulations!" 
puts "#{name}, in #{100 - age} years you will be 100!"