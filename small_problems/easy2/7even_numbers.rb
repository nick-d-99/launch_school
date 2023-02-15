=begin
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end

(2...100).step(2) { |num| puts num }
