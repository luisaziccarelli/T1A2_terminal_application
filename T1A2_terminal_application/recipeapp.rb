# Recipe app 

#List of ingredients 
food = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 

#dietary restrictions
diet = [ "vegan", "gf" ]


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


#array with hashes that contain the recipes

puts "You have bread, milk, cheese, apples, carrot, steak, pasta in your kitchen"

puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s

if vegan == "y"  
    puts "you are vegan"
else
    puts "you are not vegan"
end 

puts "Are you gluten free? Type y for yes or n for no"
gf = gets.chomp.to_s
 
if gf  == "y"  
    puts "you are gluten free"
else
    puts "you are not gluten free"
end 

# (vegan && gf) == "n"

# if (vegan && gf) == "y"
if (vegan == "y") && (gf == "y")
    puts "So you are both vegan and gf"
elsif (vegan == "n") && (gf == "n")
    puts "So you are neither vegan or gluten free"
elsif (vegan == "y") && (gf == "n")
    puts "So you are only vegan"
elsif (vegan == "n") && (gf == "y")
    puts "So you are only gluten free"
    puts recipes[2][:name]
else 
    puts "you are just one of them"
end 

#loop through the recipes array and print out the name of each recipe 

i = 0

while (i < recipes.length)
    puts recipes[i]
     i += 1
end

#recipes.each do |item|
 #   puts item 
  #end

