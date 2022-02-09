puts "Would you like to start? Please enter (Y)es or (N)o\n"
answer = gets.chomp
while answer != 'N'
  puts "Please enter a number to cube:\n"
  x = gets.chomp

  if x.include? '.'
    # puts 'FLOAT'
    x = x.to_f
  else
    # puts 'INT'
    x = x.to_i
  end

  puts "Your number cubed is: #{x**3}"
  puts "Would you like to continue? Please enter (Y)es or (N)o\n"
  answer = gets.chomp
end

puts "Thanks!"