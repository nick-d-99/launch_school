num = NIL
while num == NIL || num < 0 do
  puts "Please enter a number between 0 and 100: \n"
  num = gets.chomp.to_i
end

answer = "Something went wrong."

case
when 0 <= num && num <= 50
  answer = 'Number is between 0 and 50!'
when 51 <= num && num <= 100
  answer = 'Number is between 51 and 100!'
else
  answer = 'Number is greater than 100!'
end

puts answer