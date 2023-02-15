=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
=end

puts '>> Please enter an integer greater than 0:'
int = Integer(gets) rescue nil

puts ">> Enter \'s\' to compute the sum, \'p\' to compute the product."
op = gets.chomp
until op == 's' || op == 'p'
  puts "Please enter \'s\' or \'p\'."
  op = gets.chomp
end

result = case op
         when 's'
           result = 0
           (0..int).each { |x| result += x }
           puts "The sum of the integers between 1 and #{int} is #{result}."
         when 'p'
           result = 1
           (1..int).each { |x| result *= x }
           puts "The product of the integers between 1 and #{int} is #{result}."
         end
