p 'What is the bill?'
bill = gets.chomp.to_f

p 'What is the tip percentage?'
tip_p = gets.chomp.to_f

tip = bill * (tip_p * 0.01)

p "The tip is #{tip}"
p "The total is #{tip + bill}"