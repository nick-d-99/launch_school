=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Examples:

triangle(5)
    *
   **
  ***
 ****
*****

triangle(9)
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end

def triangle(n)
  sol = ''

  n.times do |count|
    sol += ' ' * (n - (count + 1))
    sol += ('*' * (count + 1)) + "\n"
  end
  puts sol
end

triangle(5)
triangle(9)
