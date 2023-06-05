# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

def buy_fruit(list)
  result = []
  list.each do |fruit_arr|
    fruit = fruit_arr[0]
    count = fruit_arr[1]
    count.times { |_| result << fruit }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
