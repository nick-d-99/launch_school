def fib(num)
  return 1 if num == 1

  num + fib(num - 1)
end

p fib(1)
p fib(2)
p fib(3)
