=begin

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Examples:

```ruby
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
```

The tests above should print true.

=end
def stringy(num)
  sol = '1'
  flag = true
  (num - 1).times do 
    flag ? sol += '0' : sol += '1'
    flag = !flag
  end
  sol
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
