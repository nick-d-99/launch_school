# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
# assume n will always be odd

# takes the max characters and how many stars are required and populates a row
def generate_row(max, stars)
  max.times do |i|
    # 
  end
end
# need to figure out how to center a row
# how to put stars into row and have them centered with even spaces on each side
# could try cutting in half and padding at end?

def generate_half(n, mid)
  # half = []
  # n.times do |i|
  #   curr = ''
  #   if i < mid
  #     curr << ' '
  #   elsif i == mid
  #     curr << '*'
  #   else
  #     curr << ' '
  #   end
  #   half << curr
  # end
  # puts half
  generate_row(n, 3)
end
# once row generation works need to write algorithm to put rows together

def diamond(n)
  sol = []
  mid = n / 2
  mid_row = ['*' * n]

  top = generate_half(n, mid)
  # bottom = top but flipped
end

# diamond(1)
# diamond(3)
diamond(9)

# need to find max length of a row
# max length of a row is middle row and equal to n
# need to place spaces or *s appropriately
# top half and bottom half will be the same but flipped
# number of rows is equal to n
