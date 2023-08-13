# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

def transpose( mat)
  sol = [[]]
  mat.each_with_index do |arr, arr_idx|
    arr.each_with_index do |val, idx|
      sol[arr_idx][idx] = mat[idx][arr_idx]
    end
  end
  sol
end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]
