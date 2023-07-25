# Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.
# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.
def swap(arr, idx0, idx1)
  temp = arr[idx0]
  arr[idx0] = arr[idx1]
  arr[idx1] = temp
  arr
end

def bubble_sort!(arr)
  finish = false
  swapped = false
  len = arr.size
  until finish
    count = 0
    arr.each_with_index do |val, idx|
      adj = idx + 1
      break if adj >= len

      if val > arr[adj]
        arr = swap(arr, idx, adj)
        swapped = true
      else
        count += 1
      end
    end
    finish = true if count == len - 1
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
