# My Recipe App 

require 'colorize'

require 'artii'

a = Artii::Base.new :font => 'slant'
puts a.asciify("My Recipe App").colorize(:light_blue)

#List of ingredients 
#food = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 
#puts "You have bread, milk, cheese, apples, carrot, steak, pasta in your kitchen"
# array of food in recipes

#dietary restrictions
diet = [ "vegan", "gf" ]

puts "Welcome to My Recipe App! What is your name?"
name = gets.chomp.to_s

puts "Hi, #{name}. This program gives you recipes that match the foods you have available in your kitchen. Let's get started!"

puts "What food do you have available in your kitchen? List main ingredients such as: cheese, pasta, etc."
main_ingredients = gets.chomp.to_s

puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s

puts "Are you gluten free? Type y for yes or n for no"
gf = gets.chomp.to_s

# Check if main ingredients are in ingredients in recipe

def ingredientsmatch(main_ingredients)

ingredients_in_recipes = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 

i = 0
    for i in ingredients_in_recipes
         if ingredients_in_recipes.include?(main_ingredients)
             puts "Great, we might have some recipes to match your food"
         else
             puts "Sorry, I am afraid we o not have recipes available that match your food"
         end
         break
     end  
 end

 puts ingredientsmatch(main_ingredients)

#START METHOD 1 

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

# begin rescue here 

begin
    veganorgf(vegan,gf)    
rescue TypeError
    puts "TypeError handled"
end 

   
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
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
        end
    elsif !(vegan == "y") && !(gf == "y")
        if !recipes[i].has_key?(:vegan) && !recipes[i].has_key?(:gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
        end
    elsif (vegan == "y")
        if !recipes[i].has_key?(:non_vegan)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
        end
    elsif (gf == "y")
        if !recipes[i].has_key?(:non_gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:light_blue)}"
        end
    end
     
    i += 1
end
end 

puts choiceofrecipe(vegan, gf)


