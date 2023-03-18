# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

def fib(prev, curr)
  fib(curr, prev + curr)
end

def add(num1, num2)
  num1 + num2
end

def find_fibonacci_index_by_length(digits)
  prev = 1
  curr = 1

  fib = add(prev, curr)
  count = 3
  len = fib.to_s.size

  until len == digits
    prev = curr
    curr = fib
    fib = add(prev, curr)
    count += 1
    len = fib.to_s.size
  end
  p count
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(3)
find_fibonacci_index_by_length(10)
find_fibonacci_index_by_length(100)
find_fibonacci_index_by_length(1000)
find_fibonacci_index_by_length(10000)
