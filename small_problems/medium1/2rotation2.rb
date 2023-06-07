# Write a method that can rotate the last n digits of a number.
require './1rotation1.rb'

def rotate_rightmost_digits(num, n)
  return num if n == 1

  # p num.class
  if num.class == Integer
    arr = num.to_s.chars.map(&:to_i)
  else
    arr = num
  end
  len = arr.size
  required_index = len - n
  saved = arr[0...required_index]
  rotated = rotate_array(arr[required_index, len])
  combined = saved + rotated
  combined.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917
