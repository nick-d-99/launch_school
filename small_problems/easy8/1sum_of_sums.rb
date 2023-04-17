# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


def sum_of_sums(arr)
  total = arr[0]
  arr.each_with_index do |_, idx|
    next if idx.zero?

    total += arr[0..idx].sum
  end
  total
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])
