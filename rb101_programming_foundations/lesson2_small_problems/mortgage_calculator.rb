def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  if num.to_i.to_s == num
    return true, 'int'
  elsif num.to_f.to_s == num
    return true, 'float'
  else
    false
  end
end

def valid_apr(num)
  num_f = num.to_f
  if !valid_number?(num)
    false
  elsif num_f > 1 || num_f < 0
    false
  else
    true
  end
end

# intro
prompt('Welcome to the Mortgage Calculator!')

# get amount
prompt('What is the loan amount?')
loan = gets.chomp

check = valid_number?(loan)
# until valid_number?(loan)
until check[0]
  prompt('Invalid number!')
  prompt('Please enter a valid integer or decimal.')
  loan = gets.chomp
end

if check[0] == 'int'
  loan = loan.to_i
else
  loan = loan.to_f
end

# get APR
prompt('What is the Annual Percentage Rate (APR)')
prompt('EX: 0.05 for 5%.')
apr = gets.chomp

until valid_apr(apr)
  prompt('Invalid APR!')
  prompt('Please enter a valid APR between 0 and 1.')
  prompt('EX: 0.05 for 5%.')
  apr = gets.chomp
end

apr = (apr.to_f / 12)

# get loan duration
prompt('Please enter the loan duration in months.')
duration = gets.chomp

until valid_number?(duration)
  prompt('Invalid number!')
  prompt('Please enter a valid integer for the loan duration in months.')
  duration = gets.chomp
end
duration = duration.to_i

monthly_payment = loan * (apr / (1 - (1 + apr)**(-duration)))
display_payment = format("$%.2f", monthly_payment)
prompt("Your monthly payment is: #{display_payment}!")
