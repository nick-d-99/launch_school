# Write a method that takes one argument, a positive integer, and returns as list of the digits in the number.

def digit_list(num)
  list = []
  num.to_s.each_char { |char| list << char.to_i }
  list
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)
