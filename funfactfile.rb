#fun fact generator



def greeting
    puts "Hey there, would you like to learn a fun fact today?"
    user_input = gets.chomp.to_s
    while user_input == yes 
        puts  
    else "No worries! See ya next time!"
    end
end
