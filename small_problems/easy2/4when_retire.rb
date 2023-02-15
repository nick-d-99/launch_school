=begin

Build a program that displays when the user will retire and how many years she has to work till retirement.

=end

YEAR = 2023

puts 'What is your age?'
age = gets.to_i

puts 'At what age would you like to retire?'
goal = gets.to_i

diff = goal - age

puts "It's #{YEAR}. You will retire in #{YEAR + diff}."
puts "You only have #{diff} years of work to go!"
