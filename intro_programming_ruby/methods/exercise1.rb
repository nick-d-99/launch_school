def greeting(name) 
  puts "Welcome to my program which contains a method, #{name}!"
end 

puts "Please enter your name: \n"
name = gets.chomp 

greeting(name)