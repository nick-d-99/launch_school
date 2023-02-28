# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
def uppercase?(str)
  str.each_char { |char| return false if char != char.upcase }
  true
end

puts uppercase?('t')
puts uppercase?('T')
puts uppercase?('Four Score')
puts uppercase?('FOUR SCORE')
puts uppercase?('4SCORE!')
puts uppercase?('')
