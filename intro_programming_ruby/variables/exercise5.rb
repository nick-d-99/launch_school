=begin
  
  Look at the following programs...

  x = 0
  3.times do
    x += 1
  end
  puts x

  and...

  y = 0
  3.times do
    y += 1
    x = y
  end
  puts x

  What does x print to the screen in each case? Do they both give errors? 
  Are the errors different? Why?

  Answer:
  The first program has x evaluate to 3. The variable x is declared outside of
  the block making it accessible in the 3.times loop.

  The second program throws an error seeing as x is instantiated inside the block.
  Once the program is out of the block, x is no longer accessible.
  
=end