# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_words(str)
  result = ''
  word_a = str.split
  word_a.each do |word|
    if word.size >= 5
      result << word.reverse + ' '
    else
      result << word + ' '
    end
  end
  result
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
