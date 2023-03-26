# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave(arr1, arr2)
  solution = []
  len = arr1.size

  first = 0
  sec = 0

  alt = false

  until sec == len
    if alt
      solution << arr2[sec]
      sec += 1
      alt = false
    else
      solution << arr1[first]
      first += 1
      alt = true
    end
  end

  solution
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

# books solution is much more simple

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end
