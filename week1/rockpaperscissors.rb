#

choices = [ 'rock' , 'paper', 'scissor' ]

puts "Welcome choose one option: rock, paper, or scissor. Lets play!"
player_choice = gets.chomp.to_s.downcase

computer_choice = choices.sample

case [ player_choice , computer_choice ]
when [ (player_choice == rock && computer_choice == scissor) || (player_choice == scissor && computer_choice == paper) || (player_choice == paper && computer_choice == rock) ]
    puts "You win!"
when player_choice == computer_choice
    puts "You tied!"
else
    puts "You lose!"
end 

#puts "The computer chose #{computer_choice}"
