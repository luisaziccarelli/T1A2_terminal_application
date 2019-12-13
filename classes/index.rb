class Dog
    attr_reader : :location; :number_walks
    @@all_dogs = []
    def initialize(name, age)
        @name = name
        @age = age
        @location = location
        @number_walks = 0
    end
end

def name
    @name
end


def name= (new_name)
    @name = new_name
end

def speak
    puts "My name is #{@name} and I am #{@age}"
end

def walk
    @number_walks +=1
end


doggo = Dog.new("Lassie", 10, "Sydney")
dog2 = Dog.new("Toto", 65, "Kansas")

doggo.speak
dog2.speak 

puts doggo.location
puts dog2.location 