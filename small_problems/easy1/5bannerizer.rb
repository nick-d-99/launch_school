=begin

Write a method that will take a short line of text, and print it within a box.

=end

def print_in_box(text)
  len = text.length
  bar = '+'
  empty = '|'
  (len + 2).times do
    bar << '-'
    empty << ' '
  end
  bar << '+'
  empty << '|'

  puts bar
  puts empty
  puts "| #{text} |"
  puts empty
  puts bar
end

print_in_box('To boldly go where no one has gone before.')

# would just like to note my solution looks very similar to the books solution but
# i got this 100% correct and did not see the solution until i was checking my work
