# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

def square_sum(num)
  result = 0
  1.upto(num) { |val| result += val }
  result**2
end

def sum_square(num)
  result = 0
  1.upto(num) { |val| result += val**2 }
  result
end

def sum_square_difference(num)
  square_sum(num) - sum_square(num)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
