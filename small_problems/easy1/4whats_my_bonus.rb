=begin

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

=end

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)
