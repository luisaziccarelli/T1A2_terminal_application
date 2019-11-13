
#--drinks beer wine spirits
#--food tomato cheese pickles



flag, *arr = ARGV



if flag == "drinks" && arr.length > 3
    puts "You are too drunk! Sorry!"
elsif flag == "food" && arr.length > 3  
    puts "Oh-Oh! you might need more ingredients!"
else 
    puts "Ok, you may have one more"
end 






