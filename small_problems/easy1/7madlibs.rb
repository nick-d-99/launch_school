=begin

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

=end

puts "Please enter a noun:\n"
noun = gets.chomp.to_s

puts "Please enter a verb:\n"
verb = gets.chomp.to_s

puts "Please enter an adjective:\n"
adjective = gets.chomp.to_s

puts "Please enter an adverb:\n"
adverb = gets.chomp.to_s

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
