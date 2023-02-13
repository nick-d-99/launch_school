=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

=end

def center_of(str)
  len = str.length
  mid = ''
  if len > 1
    if len.even?
      mid = str[(len / 2) - 1] + str[len / 2]
    else
      mid = str[len / 2]
    end
  else
    mid = str
  end
  mid
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')
