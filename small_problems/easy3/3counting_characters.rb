# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.
puts 'Please write word or multiple words: '
phrase = gets.chomp

total = 0
phrase.each_char do |char|
  total += 1 unless char == ' '
end

puts "There are #{total} characters in \"#{phrase}.\""

# correct but want to save books simpiler solution

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

# used .size instead of a loop to count
