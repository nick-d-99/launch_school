# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
def running_total(arr)
  return_a = []
  if arr.size.positive?
    total = 0
    arr.each_index do |idx|
      total += arr[idx]
      return_a[idx] = total
    end
  end
  return_a
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# you guessed it, book has much better solution

# def running_total(array)
# sum = 0
# array.map { |value| sum += value }
# end
