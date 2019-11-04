#fun fact generator

require 'faker'

puts "Hey there, would you like to hear a Shakespeare quote?"
answer = gets.chomp.to_s

puts Faker::Quotes::Shakespeare.as_you_like_it_quote 

loop do
    puts "Do you want another one?"
    answer = gets.chomp
    if answer == "yes"
        puts Faker::Quotes::Shakespeare.as_you_like_it_quote 
    elsif answer != "yes" 
        puts "Ok, bye!"
    break
    end
  end

