# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(num)
  mult_a = []
  (0..num).step(3) do |three|
    mult_a << three unless mult_a.include?(three)
  end
  (0..num).step(5) do |five|
    mult_a << five unless mult_a.include?(five)
  end
  mult_a.sum
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(20)
puts multisum(1000)
