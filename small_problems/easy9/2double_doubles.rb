# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
def double?(num)
  num_s = num.to_s
  digits = num_s.size
  if digits.even?
    half = digits / 2
    first_half = num_s[0..(half - 1)]
    second_half = num_s[half..-1]
    if first_half == second_half
      return true
    else
      return false
    end
  end
  false
end

def twice(num)
  if double?(num)
    p num
  else
    p num * 2
  end
end

# double?(1212)

twice(37)
twice(44)
twice(334433)
twice(444)
twice(107)
twice(103103)
twice(3333)
twice(7676)
twice(123_456_789_123_456_789)
twice(5)
