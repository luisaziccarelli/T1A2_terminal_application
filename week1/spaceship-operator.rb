
##  Spaceship Operator 

highest_score = 50

puts "Welcome to the Spaceship Operator. To begin please enter your score. Enter any number between 0 to 50" 
user_score = gets.chomp.to_i

case user_score <=> highest_score
when 1 
    puts "You are the best!"
when 0
    puts "You are as awesome as everyone else!"
when -1
    puts "You need to be more awesome!"
end 

