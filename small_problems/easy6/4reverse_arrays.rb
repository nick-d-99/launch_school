# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(list)
  len = list.size
  list.each_index do |idx|
    break if idx >= (len / 2)

    next_idx = len - idx - 1
    # break unless next_idx.positive?

    temp = list[next_idx]

    list[next_idx] = list[idx]
    list[idx] = temp
  end
  list
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

=begin pretty straight forward

only concern was i kept getting a nil value at the beginning of the array.
this was due to next_idx referencing an index out of range of the array.
this happened because i used the .size function to get the length of the array.
the size != indexes due to indexing beginning at 0 and size beginning at 1.

i made len = list.size - 1 but the method did not fully reverse the list anymore.
this was due to the break condition (break if idx >= (len / 2))

by subtracting the extra 1 (from the size method) when instantiating next_idx,
(next_idx = len - idx - 1) the method reverses lists

=end
