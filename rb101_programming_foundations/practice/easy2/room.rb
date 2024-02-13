p 'Enter the length of the room in meters:'
len = gets.chomp.to_f
p 'Enter the width of the room in meters:'
wid = gets.chomp.to_f

p "The area of the room is #{len * wid} square meters (#{(len * wid) * 10.7639} square feet)."