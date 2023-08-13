# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

def display(arr)
  arr.each { |row| puts row }
end

def top(num)
  count = 0
  half = (num / 2)
  sol = []
  until count == half
    row = ' ' * num
    row[count] = '*'
    row[half] = '*'
    row[num - 1 - count] = '*'
    sol << row
    count += 1
  end
  sol
end

def star(num)
  sol = []
  top = top(num)
  mid = '*' * num
  bot = top.reverse
  display(top)
  puts mid
  display(bot)
end

star(7)
star(9)
