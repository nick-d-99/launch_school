=begin

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

=end

def builder(count, len)
  line = ''
  count.times do
    line << ' '
  end
  line << '*' until line.length == len
  line
end

def triangle(h)
  count = h - 1
  h.times do
    puts builder(count, h)
    count -= 1
  end
end

triangle(5)
triangle(9)

=begin

my solution is correct but the book does an interesting approach so i will paste it here

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

=end
