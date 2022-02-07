def multiply(a, b)
  a*b
end

puts "Please enter a number:\n"
a = gets.chomp.to_i
puts "Please enter another number to multiply with the first:\n"
b = gets.chomp.to_i

product = multiply(a, b)
puts "Result: #{a} X #{b} = #{product}"