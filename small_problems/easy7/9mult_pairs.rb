# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(arr1, arr2)
  total = []
  arr1.each do |val1|
    arr2.each do |val2|
      total << val1 * val2
    end
  end
  total.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
