=begin

Assignment:

Build a command line calculator program that does the following:

    asks for two numbers
    asks for the type of operation to perform: add, subtract, multiply or divide
    displays the result

=end

def prompt(message)
  puts "=> #{message}"
end

def operation_to_message(op)
  msg = case op
          when '1'
            msg = 'Adding'
          when '2'
            msg = 'Subtracting'
          when '3'
            msg = 'Multiplying'
          when '4'
            msg = 'Dividing'
        end
  msg
end

prompt('Welcome to Calculator! Enter your name:')

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt('Please enter a valid name.')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  prompt('Please enter a number.')

  # code found from https://stackoverflow.com/questions/14900490/how-to-cleanly-verify-if-the-user-input-is-an-integer-in-ruby
  # makes sure the user input is an integer and if its not, make the value nil
  # by using resuce nil, I can check to make sure the value is not nil
  # if the value is not nil, I know it is a valid integer

  num1 = Integer(gets.chomp) rescue nil

  # uses a while loop to keep looping until the user enters a valid integer

  until num1
    prompt('Please enter a valid integer.')
    num1 = Integer(gets.chomp) rescue nil
  end

  prompt('Please enter another number.')
  num2 = Integer(gets.chomp) rescue nil
  until num2
    prompt('Please enter a valid integer.')
    num2 = Integer(gets.chomp) rescue nil
  end

  operator_prompt = <<-MSG 
  Please enter the number corresponding with the operation you would like to execute.
      1. Add
      2. Subtract
      3. Multiply
      4. Divide
  MSG
  # prompt('Please enter the number corresponding with the operation you would like to execute.')
  # prompt('1. Add')
  # prompt('2. Subtract')
  # prompt('3. Multiply')
  # prompt('4. Divide')
  prompt(operator_prompt)

  operations = ['1', '2', '3', '4']

  op = gets.chomp

  loop do
    if operations.include?(op)
      break
    else
      prompt('Please enter a valid operation.')
      op = gets.chomp
    end
  end

  prompt("#{operation_to_message(op)} the two numbers...")

  case op
  when '1'
    prompt('Addition selected!')
    puts num1 + num2
  when '2'
    prompt('Subtraction selected!')
    puts num1 - num2
  when '3'
    prompt('Multiplication Selected!')
    puts num1 * num2
  when '4'
    prompt('Division selected!')
    puts num1.to_f / num2.to_f
  end

  prompt('Would you like to continue?')
  prompt('Y/N')
  cont = gets.chomp
  break if cont.downcase == 'n'
end
prompt('Thanks for using Calculator!')
