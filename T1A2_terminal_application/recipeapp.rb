# Recipe app 

require 'colorize'

require 'artii'

a = Artii::Base.new :font => 'slant'
puts a.asciify("My Recipe App").colorize(:light_blue)

#List of ingredients 
food = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 

#dietary restrictions
diet = [ "vegan", "gf" ]


#array with hashes that contain the recipes


puts "You have bread, milk, cheese, apples, carrot, steak, pasta in your kitchen"

puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s

puts "Are you gluten free? Type y for yes or n for no"
gf = gets.chomp.to_s

def veganorgf (vegan,gf)

    if vegan == "y"  
        puts "you are vegan"
     elsif  !vegan == "y"  
        puts "you are not vegan" 
     elsif gf  == "y"  
        puts "you are gluten free"
     elsif !gf  == "y"  
        puts "you are not gluten free"
     end
end

# begin rescue here - error handling - just for the calling of the method not in the method

#puts yourdiet(vegan,gf)


begin
    puts veganorgf(vegan,gf)    
rescue TypeError
    puts "TypeError handled"
end 

#next steps is add a gem 
   
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
        puts "you are just one of them"
    end   
end 

diet_combinations(vegan, gf)

# START METHOD 1
#puts "Are you vegan? Type y for yes or n for no"
#vegan = gets.chomp.to_s

#if vegan == "y"  
#    puts "you are vegan"
#else
#    puts "you are not vegan"
#end 

#puts "Are you gluten free? Type y for yes or n for no"
#gf = gets.chomp.to_s
 
#if gf  == "y"  
#    puts "you are gluten free"
#else
#    puts "you are not gluten free"
#end 
# END METHOD 1


# (vegan && gf) == "n"

# if (vegan && gf) == "y"
#if (vegan == "y") && (gf == "y")
#    puts "So you are both vegan and gf"
#elsif (vegan == "n") && (gf == "n")
#    puts "So you are neither vegan or gluten free"
#elsif (vegan == "y") && (gf == "n")
#    puts "So you are only vegan"
#elsif (vegan == "n") && (gf == "y")
#    puts "So you are only gluten free"
    #puts recipes[2][:name]
#else 
#    puts "you are just one of them"
#end 

#loop through the recipes array and print out the name of each recipe 



# START METHOD 2
def choiceofrecipe(vegan, gf)   

    recipes = [
        {
            :name => "steak sandwich", 
            :non_vegan => "steak", 
            :non_gf => "bread"
        },
        {
            :name => "cheese" "carrot" "pasta", 
            :non_vegan => "cheese + carrot", 
            :non_gf => "pasta"
        },
        {
            :name => "cheese steak",  
            :non_vegan => "cheese", 
            :gf => "steak"
        },
        {
            :name => "apple sandwich", 
            :vegan => "apple", 
            :non_gf => "bread"
        },
        {
            :name => "apple carrot salad", 
            :vegan => "apple", 
            :gf => "carrot" 
        }
    ]  

i = 0

while (i < recipes.length)
    if (vegan == "y") && (gf == "y")
        if !recipes[i].has_key?(:non_vegan) && !recipes[i].has_key?(:non_gf)
            puts recipes[i][:name].colorize(:light_blue)
        end
    elsif !(vegan == "y") && !(gf == "y")
        if !recipes[i].has_key?(:vegan) && !recipes[i].has_key?(:gf)
            puts recipes[i][:name].colorize(:light_blue)
        end
    elsif (vegan == "y")
        if !recipes[i].has_key?(:non_vegan)
            puts recipes[i][:name].colorize(:light_blue)
        end
    elsif (gf == "y")
        if !recipes[i].has_key?(:non_gf)
            puts recipes[i][:name].colorize(:light_blue)
        end
    end
     
    i += 1
end
end 

puts choiceofrecipe(vegan, gf)

# END METHOD 2
