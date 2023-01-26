=begin

Assignment:

Build a command line calculator program that does the following:

    asks for two numbers
    asks for the type of operation to perform: add, subtract, multiply or divide
    displays the result

=end

puts 'Please enter a number.'

# code found from https://stackoverflow.com/questions/14900490/how-to-cleanly-verify-if-the-user-input-is-an-integer-in-ruby
# makes sure the user input is an integer and if its not, make the value nil
# by using resuce nil, I can check to make sure the value is not nil
# if the value is not nil, I know it is a valid integer

num1 = Integer(gets.chomp) rescue nil

# uses a while loop to keep looping until the user enters a valid integer

while !num1
  puts 'Please enter a valid integer.'
  num1 = Integer(gets.chomp) rescue nil
end

puts 'Please enter another number.'
num2 = Integer(gets.chomp) rescue nil
while !num2
  puts 'Please enter a valid integer.'
  num2 = Integer(gets.chomp) rescue nil
end

puts 'Please enter the number corresponding with the operation you would like to execute.'
puts '1. Add'
puts '2. Subtract'
puts '3. Multiply'
puts '4. Divide'
op = Integer(gets.chomp) rescue nil
while !op
  puts 'Please enter a valid integer.'
  op = Integer(gets.chomp) rescue nil
end

case op
when 1
  puts 'Addition selected!'
  puts num1 + num2
when 2
  puts 'Subtraction selected!'
  puts num1 - num2
when 3
  puts 'Multiplication Selected!'
  puts num1 * num2
when 4
  puts 'Division selected!'
  puts num1.to_f / num2.to_f
end
