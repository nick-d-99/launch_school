# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
def convert(num_str)
  result = nil
  case num_str
  when 'zero'
    result = '0'
  when 'one'
    result = '1'
  when 'two'
    result = '2'
  when 'three'
    result = '3'
  when 'four'
    result = '4'
  when 'five'
    result = '5'
  when 'six'
    result = '6'
  when 'seven'
    result = '7'
  when 'eight'
    result = '8'
  when 'nine'
    result = '9'
  else
    result = num_str
  end
  result
end

def word_to_digit(str)
  temp = []
  split = str.split
  split.each { |word| temp << convert(word) }
  solution = temp.join(' ')
  p solution
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# book used gsub!
