# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
def show_mult_avg(arr)
  len = Float(arr.size)
  total = 1

  arr.each { |n| total *= n }
  "The result is #{format('%.3f', total / len)}"
end

p show_mult_avg([3, 5])
p show_mult_avg([6])
p show_mult_avg([2, 5, 7, 11, 13, 17])
