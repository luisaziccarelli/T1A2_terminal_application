# My Recipe App 

require 'colorize'

require 'artii'

a = Artii::Base.new :font => 'slant'
puts a.asciify("My Recipe App").colorize(:light_blue)



#Welcome message
# #def greeting(name) 
# name = ARGV 
#     if ARGV.length < 2
#      puts "Welcome #{ARGV[0]}. This is My Recipe App!"
#     elsif !ARGV.length < 2
#        puts "Welcome! This is My Recipe App!"
#      end
#  end

#  puts greeting(ARGV)
puts "Welcome to My recipe App\nThis program gives you recipes you can make with food you have available in your kitchen. Let's get started!"

#Main ingredients
puts "Here's a list of food items typically found in most people's kitchen. \n bread, milk , cheese , apples , carrots , steak , pasta.\n Type: \n 1= yes, you have these items and wish to continue, \n 2= no, you don't have these items but wish to continue, \n 3= to exit the program"
main_ingredients = gets.chomp.to_i

case main_ingredients
     when 1
         puts "Great, you already have some ingredients. To continue press enter"
     when 2
         puts "So you may not have the ingredients, but would like to continue anyways. To continue press enter"
     when 3
         puts "You wished to exit the program. See you next time!"
     else 
         puts "Invalid option. Select 1, 2, or 3"
 end

 begin 
     main_ingredients = gets.chomp.to_i
end  while main_ingredients == 3
 

#Dietary restrictions

puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s.downcase.delete(" ")


#this works without invalid option allowing loop
def vegan(vegan)
    if vegan == "y"  
        puts "you are vegan"
    elsif vegan == "n"  
         puts "you are not vegan"
    else
         puts "Invalid option. Type y or n"
     end
 end

begin
    vegan(vegan)  
rescue TypeError
    puts "TypeError handled"
end 

puts "Are you gluten free? Type y for yes or n for no"
gf = gets.chomp.to_s.downcase.delete(" ")

def gf(gf)
    if gf == "y"  
        puts "you are gluten free"
    elsif gf == "n"  
        puts "you are not gluten free"
    else 
        puts "invalid option. Type y or n"
    end
end

begin
    gf(gf)    
rescue TypeError
    puts "TypeError handled"
end 


#START METHOD 1- vegan or gf combined

#def veganorgf (vegan,gf)

    # if vegan == "y"  
    #     puts "you are vegan"
    #  elsif  !vegan == "y"  
    #     puts "you are not vegan" 
#       elsif gf  == "y"  
#          puts "you are gluten free"
#      elsif !gf  == "y"  
#         puts "you are not gluten free"
#      end
# end

# begin rescue here 

#begin
#     veganorgf(vegan,gf)    
# rescue TypeError
#     puts "TypeError handled"
# end 


#Combinations of dietary restrictions    
def diet_combinations(vegan, gf)

    if (vegan == "y") && (gf == "y")
        puts "So you are both vegan and gf"
    elsif (vegan == "n") && (gf == "n")
        puts "So you are neither vegan or gluten free"
    elsif (vegan == "y") && (gf == "n")
        puts "So you are only vegan"
    elsif (vegan == "n") && (gf == "y")
        puts "So you are only gluten free"
    else 
        puts "We were unable to determine your dietary restriction"
    end   
end 


diet_combinations(vegan, gf)

# START METHOD 2: Selecting recipes 

 def choiceofrecipe(vegan, gf)   

    recipes = [
        {
            :name => "steak sandwich", 
            :non_vegan => "steak", 
            :non_gf => "bread",
            :recipe => 
"prep time: 20 min
Instructions: 
    - Make steak 
    - Toast bread"

        },
        {
            :name => "cheese" + " " "carrot" + " " "pasta", 
            :non_vegan => "cheese + carrot", 
            :non_gf => "pasta",
            :recipe => 
"prep time: 20 min
Instructions: 
- peel carrots
- shred carrot 
- Make pasta and mix"

        },
        {
            :name => "cheese steak",  
            :non_vegan => "cheese", 
            :gf => "steak",
            :recipe =>
"prep time: 20 min
Instructions: 
- fry steak
- add cheese"

        },
        {
            :name => "apple sandwich", 
            :vegan => "apple", 
            :non_gf => "bread",
            :recipe =>
"prep time: 20 min
Instructions: 
- peel apples
- toast bread"
        },
        {
            :name => "apple carrot salad", 
            :vegan => "apple", 
            :gf => "carrot",
            :recipe => 
"prep time: 20 min
Instructions: 
- peel carrots
- peel apples
- mix" 

        }
    ]  

i = 0

while (i < recipes.length)
    if (vegan == "y") && (gf == "y")
        if !recipes[i].has_key?(:non_vegan) && !recipes[i].has_key?(:non_gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif !(vegan == "y") && !(gf == "y")
        if !recipes[i].has_key?(:vegan) && !recipes[i].has_key?(:gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif (vegan == "y")
        if !recipes[i].has_key?(:non_vegan)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif (gf == "y")
        if !recipes[i].has_key?(:non_gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    end
     
    i += 1
end
end 

puts choiceofrecipe(vegan, gf)


