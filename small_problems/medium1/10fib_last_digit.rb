# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.
def fibonacci_p(num)
  if num <= 2
    1
  else
    count = 2
    total = 0
    last = 1 # last is 1 num behind
    prev = 1 # prev is 2 nums behind
    until count == num
      total = prev + last
      count += 1
      prev = last
      last = total
    end
    total
  end
end

def fibonacci_r(num)
  return 1 if num <= 2

  fibonacci_r(num - 1) + fibonacci_r(num - 2)
end

def fibonacci_last(num)
  fib = fibonacci_p(num)
  # fib = fibonacci_r(num)
  arr = fib.to_s.chars.map(&:to_i)
  arr[-1]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
