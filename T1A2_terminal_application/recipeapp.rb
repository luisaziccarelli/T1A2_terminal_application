# recipe app 

#List of ingredients 
food = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 

#dietary restrictions
diet = [ "vegan", "gf" ]

#array with hashes that contain the recipes

puts "You have bread, milk, cheese, apples, carrot, steak, pasta in your kitchen"

puts "Are you vegan? Type y for yes or n for no"
vegan = gets.chomp.to_s

if vegan 
    puts "you are vegan"
else
    puts "you are not vegan"
end 

puts "Are you gluten-free> Type y for yes or n for no"
gf = gets.chomp.to_s
 
if gf 
    puts "you are gluten free"
else
    puts "you are not gluten free"
end 


recipes = [
    {
        :name => "steak sandwich", 
        :non_vegan => "steak", 
        :non_gluten_free => "bread"
    },
    {
        :name => "carrot sandwich", 
        :vegan => "carrot", 
        :non_gluten_free => "bread"
    },
    {
        :name => "cheese steak",  
        :non_vegan => "cheese", 
        :gluten_free => "steak"
    },
    {
        :name => "cheese sandwich", 
        :non_vegan => "cheese", 
        :non_gluten_free => "bread"
    },
    {
        :name => "apple carrot salad", 
        :vegan => "apple", 
        :gluten_free => "carrot" 
    }
]


