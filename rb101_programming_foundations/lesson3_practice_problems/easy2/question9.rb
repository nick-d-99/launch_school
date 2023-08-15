# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
total = 0
statement.each_char { |char| total += 1 if char == 't'  }
p total

# incorrect
# while it gets the correct number, still had to use an extra line to declare a variable

# correct answer would have been statement.count('t')