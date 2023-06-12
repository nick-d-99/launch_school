# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

#     round 1: every light is turned on
#     round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#     round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#     round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#     round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

def helper(n, arr)
  len = arr.length
  i_len = len - 1
  # p len
  
  # 0.step(i_len, n) do |i|
  #   p i
  #   arr[i + 1] = !arr[i + 1]
  # end

  if n == 1
    arr.map! { |val| !val }
    return arr
  else
    0.step(len, n) do |i|
      p i
      arr[i] = !arr[i] if i < len
    end
  end
  arr
end
# so close problem is switch 2 has index 3
# problem stems from iterating and referencing
# also running loop 3 times 0.step... do |i| results in 3 loops but i want
# an iterator

def switches(num)
  arr = []
  num.times { arr << false }
  p 'round 0', arr
  arr = helper(1, arr)
  p 'round 1', arr
  arr = helper(2, arr)
  p 'round 2', arr
  helper(3, arr)
  p 'round 3', arr
  # helper(num, arr)
  p arr
end

# p switches(1)
# p switches(2)
# p switches(3)
# p switches(4)
p switches(5)
# p swithces(10)
