# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
def multiply_list(arr1, arr2)
  solution = []

  arr1.each_with_index { |val1, idx| solution.append(val1 * arr2[idx]) }

  solution
end

p multiply_list([3, 5, 7], [9, 10, 11])

# worth noting the book did something intersting
# my original logic looked like this:
# arr1.each_with_index { |_, idx| solution.append(arr1[idx] * arr2[idx]) }

# what the book did, is take advantage of the fact that 'with_index' also accesses
# the value
# why reference the first array at an index again when we already have that value
# accessed
