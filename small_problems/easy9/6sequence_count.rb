# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

def sequence(count, start)
  result = []
  return result if count.zero?

  mult = 1
  count.times do
    result << (start * mult)
    mult += 1
  end
  result
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)

# book did a good job for the multiple
# instead of what I did, they just used the start as the starting point
# and added it to itself every loop

# second solution is even more concise


# def sequence(count, first)
# (1..count).map { |value| value * first }
# end