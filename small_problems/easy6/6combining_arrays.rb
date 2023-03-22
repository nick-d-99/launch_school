# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

def merge(arr1, arr2)
  seen = []
  solution = []

  arr1.each do |val1|
    unless seen.include? val1
      solution << val1
      seen << val1
    end
  end

  arr2.each do |val2|
    unless seen.include? val2
      solution << val2
      seen << val2
    end
  end
  solution
end

p merge([1, 3, 5], [3, 6, 9])

# worst case of "the book having a better solution" yet

# def merge(array_1, array_2)
#   array_1 | array_2
# end
