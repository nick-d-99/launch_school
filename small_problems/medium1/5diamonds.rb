# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
# assume n will always be odd

# takes the max characters and how many stars are required and populates a row
def display(arr)
  arr.each { |row| puts row }
end

def generate_row(max, stars)
  half = max / 2
  half_stars = stars / 2

  star_count = 0
  right = []
  until star_count == half_stars
    right << '*'
    star_count += 1
  end

  right << ' ' until right.size == half

  left = right.reverse
  left << '*'
  row = left + right
end
# need to figure out how to center a row
# how to put stars into row and have them centered with even spaces on each side
# could try cutting in half and padding at end?
# number of stars increases by 2 each row

def diamond(max)
  top = []
  bottom = []
  sol = []

  1.step(max, 2) do |i|
    top << generate_row(max, i) if i < max
    bottom << generate_row(max, max - i)
  end

  arrs = top + bottom
  arrs.each { |row| sol << row.join }

  display(sol)
end
# once row generation works need to write algorithm to put rows together
# number of stars starts at 1, then increases by 2 each row until middle

diamond(1)
diamond(3)
diamond(9)

# need to find max length of a row
# max length of a row is middle row and equal to n
# need to place spaces or *s appropriately
# top half and bottom half will be the same but flipped
# number of rows is equal to n
