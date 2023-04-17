# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

def leading_substrings(str)
  result = [str[0]]
  i = 0
  str.each_char do |char|
    if i == 0
      i += 1
      next
    end
    result << str[0..i]
    i += 1
  end
  result
end

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')
