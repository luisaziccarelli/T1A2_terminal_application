# My Recipe App 

require 'colorize'

require 'colorized_string'

require 'artii'

require 'tty-box'


#Box to display main_ingredients 
box = TTY::Box.frame ColorizedString["veggies , chicken, cheese, pasta, bread, eggs"].colorize(:yellow), padding: 1, align: :center  

a = Artii::Base.new :font => 'slant'
puts a.asciify("My Recipe App").colorize(:light_blue)

#Welcome message
def greeting
arr = ARGV
name = ARGV[0]
    if ARGV.length < 2
        puts "Welcome #{ARGV[0]}! This is My Recipe App!"
    else
        puts "Welcome! This is My Recipe App!"
    end
end

puts greeting
ARGV.clear

#Brief description of the program
puts "This program gives you recipe ideas with basic foods most people have available in their kitchen. Let's get started!"

#Main ingredients
puts "Here's a sample of food items typically found in most people's kitchen: \n"  + box + "Please type: \n 1= yes, you have these items and wish to continue, \n 2= no, you don't have these items but wish to continue, \n 3= to exit the program" 
main_ingredients = gets.chomp.to_i 

case main_ingredients
    when  1
        print "Great, you already have some ingredients. To continue press enter"
    when  2
        print "So you may not have the ingredients, but would like to continue anyways. To continue press enter"
    when  3
        print "You wished to exit the program. See you next time!"
        puts 
        exit
    else  
        puts "Invalid option. Select 1, 2, or 3"
end

begin 
    main_ingredients = gets.chomp.to_i
end while main_ingredients == 1 | 2 | 3 


#Dietary restrictions -vegan
puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s.downcase.delete(" ")

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

#Dietary restrictions -gf
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

#Recipe selection and output method  
def choiceofrecipe(vegan, gf)   
recipes = [
        {
             :name => "Easy macaroni and cheese", 
             :non_vegan => "cheese", 
             :non_gf => "pasta",
             :recipe => 
"Prep time: 10 min
Instructions: 
1. Bring a large pot of lightly salted water to a boil. 
2. Cook macaroni in the boiling water, stirring occasionally until cooked through but firm to the bite, 8 minutes. Drain
3. Melt butter in a saucepan over medium heat; stir in flour, salt, and pepper until smooth, about 5 minutes
4. Slowly pour milk into butter-flour mixture while continuously stirring until mixture is smooth and bubbling, about 5 minutes
5. Add Cheddar cheese to milk mixture and stir until cheese is melted, 2 to 4 minutes
6. Fold macaroni into cheese sauce until coated"
         },
         {
             :name => "Egg Salad Sandwich", 
             :non_vegan => "eggs", 
             :non_gf => "bread",
             :recipe => 
 "Prep time: 30 min
 Instructions:
 1. Bring a medium pot of water to a boil
 2. Gently lower in eggs one at a time and reduce to a simmer
 3. Cook 10 minutes, then submerge in ice water. Peel eggs, then chop and add to a large bowl
 4. Add mayonnaise, mustard, lemon juice, dill, and cayenne and season with salt and pepper
 5. Mash and stir until completely combined.
 6. Serve egg salad on toasted bread on top of Bibb leaves with mustard and mayo"
         },
         {
             :name => "Tomato Basil Chicken Stew",  
             :non_vegan => "chicken", 
             :gf => "tomato + basil",
             :recipe =>
"Prep time: 25 min
Instructions:
1. Heat oil in a large stockpot over medium-high heat. Add onion, carrots and celery 
2. Sauté for 7 minutes, stirring occasionally, until the onion is soft and translucent 
3. Add garlic and sauté for an additional minute or two until fragrant
4. Add in remaining ingredients, and stir to combine. Use a long spoon to crush the tomatoes 
5. Bring to a boil, then reduce heat to medium-low and simmer partially-covered for 10 minutes
6. Serve with freshly-grated Parmesan cheese"
         },
         {
             :name => "Crispy Cucumber Sandwiches", 
             :vegan => "cucumber", 
             :non_gf => "bread",
             :recipe =>
"Prep time: 10 min
Instructions:
 1. Preheat a grill or panini pan over medium heat
 2. Brush the olive oil on one side of each slice of bread, then turn the slices over so that the oiled side is down
 3. On the dry side, add one tablespoonful of hummus to each piece of bread
 4. Next add a layer of olives and then add the cucumbers 
 5. Close the sandwich and place in the pan
 6. Cook for 4 to 5 minutes on each side, or until it begins to brown and grill marks begin to appear"
         },
         {
             :name => "Classic veggie roasted salad", 
             :vegan => "veggies" , 
             :gf => "roasted salad",
             :recipe => 
"Prep time: 50 min
Instructions: 
1. Preheat the oven to 180C.
2. Arrange the chopped vegetables on a lined baking tray and drizzle with olive oil 
3. Season with salt and pepper to taste and place the baking tray into the oven 
4. Roast for 35-40 minutes, or until vegetables are golden and crispy
5. Remove the vegetables from the oven and allow to cool slightly. 
6. Transfer to a serving platter or a wooden board and sprinkle with the crushed walnuts and fresh herbs" 
         }
    ]  

i = 0

while (i < recipes.length)
    if (vegan == "y") && (gf == "y")
        if !recipes[i].has_key?(:non_vegan) && !recipes[i].has_key?(:non_gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:yellow)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif !(vegan == "y") && !(gf == "y")
        if !recipes[i].has_key?(:vegan) && !recipes[i].has_key?(:gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:yellow)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif (vegan == "y")
        if !recipes[i].has_key?(:non_vegan)
            puts "Your recipe is #{recipes[i][:name].colorize(:yellow)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    elsif (gf == "y")
        if !recipes[i].has_key?(:non_gf)
            puts "Your recipe is #{recipes[i][:name].colorize(:yellow)}"
            puts "#{recipes[i][:recipe].colorize(:light_blue)}"
        end
    end
     
    i += 1
end
end 

puts choiceofrecipe(vegan, gf)

#Goodbye message
puts "Hope you enjoy your meal! See you again soon!"
