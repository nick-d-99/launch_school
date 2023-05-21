# Write a method that takes a string, and returns a new string in which every character is doubled.

ALPHA = ('a'..'z').to_a

def double_consonants(str)
  result = ''
  str.each_char do |char|
    if ALPHA.include? char.downcase
      result << char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')
