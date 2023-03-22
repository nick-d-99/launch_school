# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
def halvsies(arr)
  first = []
  sec = []
  solution = []

  len = arr.size - 1

  arr.each.with_index do |val, idx|
    if idx <= (len / 2)
      first << val
    else
      sec << val
    end
  end

  solution << first
  solution << sec
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])
