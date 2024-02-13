def triangle(num)
  num.times do |i|
=begin
space printed the length of the num minus iteration
this minus leaves room for star
if 3rd iteration, need 3 stars so the total length - 3

now just multiply current iteration by '*' char and append
need to add 1 to i to get real numbers, times method starts at 0
we want to start at 1
=end
    p ' '*(num - i) + '*'*(i + 1)
  end
end

triangle(5)
triangle(9)