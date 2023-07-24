# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.
def dups?(num)
  seen = []
  arr = num.to_s.split(//)
  arr.each do |digit|
    # p digit
    if seen.include?(digit)
      return false
    else
      seen << digit
    end
  end
  true
end

def featured(num)
  found = false
  remainder = num % 7
  val = num - remainder + 7
  until found
    if val.odd?
      if dups?(val)
        found = true
        return val
      end
    end
    if val >= 9_876_543_210
      puts 'There is no possible number that fulfills those requirements.'
      return false
    end
    # val += 7
    val += 14 # book solution includes that increasing by 14 maintains an odd number
    val += 7 # book solution includes that increasing by 14 maintains an odd number
    # this would eliminate half the numbers generated for val as well as save time and
    # resources on checking if the val was odd
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# This one was interesting. Given a number, the function must
# find the next number that is a multiple of 7, an odd number, and has no repeating
# digits (i.e. 100). I was able to provide a solution that fulfilled all these
# requirements however the book offered some very interesting optimizations I just
# want to note in hope of remembering or seeing later. For one, I increment by 7
# evertime to maintain the value as a multiple of 7. An optimization would be to
# increment by 14 to maintain its multiplicity as well as maintain an odd number.
# This eliminates half of the useless numbers generated (the multiples of 7 that are
# even) as well as saves time and resources (albeit not a lot) on checking if the
# value is odd. Just thought it was worth noting.

# Worth noting that in order for the val += 14 optimization to work, the starting
# number must be odd as well. In some cases, my code's starting point is an even
# number. A simple check to ensure the starting number is odd would fix all this.
