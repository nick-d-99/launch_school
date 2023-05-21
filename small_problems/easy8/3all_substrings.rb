# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

def leading_substrings(str)
  result = [str[0]]
  i = 0
  str.each_char do
    if i.zero? # in this case, we already appeneded the first letter
      i += 1
      next
    end
    result << str[0..i] && i += 1 # append the longer substring and increment idx
  end
  result
end

def substrings(str)
  result = []
  result << leading_substrings(str)
  str.each_char do
    str = str[1..-1]
    result << leading_substrings(str)
  end
  result
end

subs = substrings('abcde')
puts subs
