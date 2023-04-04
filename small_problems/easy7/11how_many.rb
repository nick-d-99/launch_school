# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  solution = Hash.new

  arr.each do |val|
    if solution.include?(val)
      solution[val] += 1
    else
      solution[val] = 1
    end
  end
  solution
end

def display(hash)
  hash.each { |key, val| puts "#{key} => #{val}" }
end

solution = count_occurrences(vehicles)
display(solution)
