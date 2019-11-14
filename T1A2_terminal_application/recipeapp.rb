# recipe app 

#List of ingredients 

food = [ "bread", "milk" , "cheese" , "apples" , "carrot" , "steak" , "pasta" ] 

#dietary restrictions

diet = [ "vegan", "gluten free", "non vegan", "non gluten free" ]

#array with hashes that contain the recipes


puts "Which of these items in your kitchen: bread, milk, cheese, apples, carrot, steak, pasta?"
user = gets.chomp.to_s

puts "Are you vegan?"
user = gets.chomp.to_s

puts "Are you gluten-free?"
user = gets.chomp.to_s





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


puts recipes[0][:name]
