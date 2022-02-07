a = 5

3.times { |n| a = 3, b = 5 }

puts a
puts b

# doesn't run because b is only accessible inside the block
# a is available since it is instantiated outside of the block