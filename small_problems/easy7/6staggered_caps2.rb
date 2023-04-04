# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(str)
  solution = ''
  toggle = false

  str.each_char do |char|
    if toggle
      solution << char.downcase
    else
      solution << char.upcase
    end
    toggle = !toggle if char.match?(/[A-Za-z]/)
  end
  solution
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')

# actually have a good solution compared to the book
# might be better, if i do say so myself
