Assume you have the following code:

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

What will each of the 4 puts statements print?

5 #=> unpredictable no mention of calling method with no arguments
6 #=> #<Date: 2016-01-01>
7 #=> #<Date: 2016-05-01>
8 #=> #<Date: 2016-05-13>