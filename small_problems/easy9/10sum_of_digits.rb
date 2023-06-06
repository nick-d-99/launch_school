# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
def sum(num)
  result = 0
  str = String(num)
  str.each_char { |char| result += Integer(char) }
  result
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
