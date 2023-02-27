# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
user = []
5.times do |num|
  if num == 0
    puts "==> Enter the #{num + 1}st number: "
  elsif num == 1
    puts "==> Enter the #{num + 1}nd number: "
  elsif num == 2
    puts "==> Enter the #{num + 1}rd number: "
  else
    puts "==> Enter the #{num + 1}th number: "
  end
  input = gets.chomp.to_i
  user << input
end

puts '==> Enter the last numer: '
check = gets.chomp.to_i

if user.include?(check)
  puts "The numer #{check} appears in #{user}."
else
  puts "The numer #{check} does not appear in #{user}."
end
