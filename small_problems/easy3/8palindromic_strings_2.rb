# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
def palindrome?(phrase)
  arr = phrase.downcase.delete('^0-9a-z').each_char.to_a
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
puts palindrome?('356a653')
puts palindrome?('123ab321')

# used https://stackoverflow.com/questions/6104240/how-do-i-strip-non-alphanumeric-characters-from-a-string-and-keep-spaces
# @search_query = @search_query.gsub(/[^0-9a-z ]/i, '')
# better approach is books 

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
