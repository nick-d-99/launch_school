# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# def fb_helper(check, num)
#   case check
#   when 0
#     p num
#   when 1
#     p
# end

def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    result = num
    if (num % 3).zero? && (num % 5).zero?
      result = 'FizzBuzz'
    elsif (num % 3).zero?
      result = 'Fizz'
    elsif (num % 5).zero?
      result = 'Buzz'
    end
    p result
  end
end

fizzbuzz(1, 15)
