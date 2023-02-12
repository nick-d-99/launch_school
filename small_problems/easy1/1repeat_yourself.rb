=begin

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:

repeat('Hello', 3)

Output:

Hello
Hello
Hello

=end

def repeat(str, c)
  c.times do
    puts str
  end
end

string = 'testing'
count = 3

repeat(string, count)
