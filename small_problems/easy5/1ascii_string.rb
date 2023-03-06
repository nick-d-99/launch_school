# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(str)
  total = 0
  str.each_char { |char| total += char.ord }
  total
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')
