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

def get_name
  name = ''
  loop do
    name = gets.chomp
    if name.empty?
      prompt('Please enter a valid name.')
    else
      return name
    end
  end
end

def get_number(reattempt = false)
  if reattempt
    prompt('Please enter a valid number.')
  else
    prompt('Please enter a number.')
  end
  num_string = gets.chomp
  num_string
end

def number?(num)
  loop do
    num_f = num.to_f
    num_i = num.to_i

    # float
    if num.include?('.')
      if num_f.to_s == num
        return num_f
      else
        num = get_number(true)
      end

    # int
    else
      if num_i.to_s == num
        return num_i
      else
        num = get_number(true)
      end
    end
  end
end

loop do
  prompt('Welcome to Calculator! Enter your name:')
  name = get_name
  prompt("Hi #{name}!")

  num1_string = get_number
  num1 = number?(num1_string)

  num2_string = get_number
  num2 = number?(num2_string)

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
  # end
  prompt('Thanks for using Calculator!')
end
