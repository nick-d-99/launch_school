puts "How old are you?\n"
age = gets.chomp.to_i

age_arr = [10, 20, 30, 40]

age_arr.each do |n|
  puts "In " + n.to_s + " years you will be:"
  puts age + n
end

10.times {  }