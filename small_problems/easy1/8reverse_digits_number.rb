=begin

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

=end

def reversed_number(num)
  rev_s = ''
  arr = []
  ns = num.to_s
  ns.each_char { |x| arr << x }
  arr.reverse!
  arr.each { |x| rev_s << x }
  rev_i = rev_s.to_i
  rev_i
end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000) # No leading zeros in return value!
puts reversed_number(12003)
puts reversed_number(1)

=begin

my solution is correct but the book has a much simpler solution:

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

=end