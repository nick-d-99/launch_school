def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end 
end

equal_to_four(5)


# You get the following error message..

# exercise.rb:8: syntax error, unexpected end-of-input, 
# expecting keyword_end

# This error is being thrown because there needs to be an end
# keyword to denote the end of the if/else
