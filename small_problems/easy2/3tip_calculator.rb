=begin

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

=end

puts 'What is the bill?'
bill = gets.to_f.round(2)

puts 'What is the tip percentage?'
perc = gets.to_f

tip = (perc * 0.01 * bill).round(2)
total = (bill + tip).round(2)

puts 'The tip is $%0.2f' % [tip]
puts 'The total is $%0.2f' % [total]
