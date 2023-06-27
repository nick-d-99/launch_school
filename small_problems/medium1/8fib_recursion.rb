def fib(num)
  return 1 if num <= 2

  fib(num - 1) + fib(num - 2)
end

p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(5)
p fib(12)
p fib(20)

# p fib(1) == 1
# p fib(2) == 1
# p fib(3) == 2
# p fib(4) == 3
# p fib(5) == 5
# p fib(12) == 144
# p fib(20) == 6765
