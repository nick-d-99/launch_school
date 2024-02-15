=begin
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:
1| repeat('Hello', 3)

Output:
1| Hello
2| Hello
3| Hello

=end

def repeat(str, num)
  num.times { p str }
end

repeat('Hello', 3)
