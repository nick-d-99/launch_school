def countdown(x)
  if x.positive?
    sleep 0.33
    print x
    sleep 0.33
    print '.'
    sleep 0.33
    print '.'
    sleep 0.33
    print '.'
    countdown(x - 1)
  else
    x
  end
end

puts "Please enter an integer to start the countdown:\n"
x = gets.chomp.to_i
puts 'Commencing countdown...'
countdown(x)
puts 'Liftoff!'
