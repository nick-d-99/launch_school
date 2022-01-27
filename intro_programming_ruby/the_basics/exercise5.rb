def factorial(n)
  if n == 1
    return n
  else
    return factorial(n-1) * n
  end
end

puts "Please enter a number:\n"
n = gets.chomp.to_i
puts factorial(n)
