=begin

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

=end

def stringy(num)
  result = '1'
  i = 1
  until result.length == num
    # puts result[i-1]
    if result[i - 1] == '0'
      result << '1'
    else
      result << '0'
    end
    i += 1
  end
  result
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
