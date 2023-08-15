# Back in the stone age (before CSS) we used spaces to align things on the screen. 
# If we had a table of Flintstone family members that was forty characters in width, 
# how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

# p title.size
pad = (40 - title.size) / 2

header = ' ' * 7 + title + ' ' * 7
p header
# p header.size

# incorrect
# close but only got 39 characters because the title has an odd number of characters

# book solution is much much simpler
p title.center(40)
