# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

def staggered_case(str)
  solution = ""
  str.each_char.with_index do |char, idx|
    if idx % 2 == 0
      solution << char.upcase
    else
      solution << char.downcase
    end
  end
  solution
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')

# actually have a good solution compared to the book
# might be better, if i do say so myself
