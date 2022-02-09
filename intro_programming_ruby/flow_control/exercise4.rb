# Snippet 1
# '4' == 4 ? puts("TRUE") : puts("FALSE")

# Will output FALSE
# CORRECT

# # Snippet 2
# x = 2
# if ((x * 3) / 2) == (4 + 4 - x - 3)
#   puts "Did you get it right?"
# else
#   puts "Did you?"
# end

# Will output "Did you get it right?"
# CORRECT


# # Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# Will output "Alright now!"
# CORRECT

# Important to note that since this is if, elsif, and else,
# the flow breaks once the (x + 1) <= (y) evaluates to true