# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

def negative(num)
  if num < 1
    num
  else
    -num
  end
end

puts negative(5)
puts negative(-3)
puts negative(0)

=begin

correct but will also put solution's more compact code

def negative(num)
  number < 0 ? -number : number
end

even shorter:

def negative(number)
  -number.abs
end

=end
