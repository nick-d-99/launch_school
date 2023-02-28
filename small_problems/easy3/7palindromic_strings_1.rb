# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
def palindrome?(phrase)
  arr = phrase.each_char.to_a
  rev = arr.reverse
  arr.each_index do |i|
    return false if arr[i] != rev[i]
  end
  true
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')
