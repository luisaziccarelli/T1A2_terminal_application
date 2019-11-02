
require 'colorize'

require 'programmer_joke'

require 'artii'

puts "I am going to become colourful"

puts "This is blue".colorize(:blue)
puts "This is light blue".colorize(:red)

ProgrammerJoke.joke

a = Artii::Base.new :font => 'slant'
puts a.asciify('Luisa').colorize(:red)

