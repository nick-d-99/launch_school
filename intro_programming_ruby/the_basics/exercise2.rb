puts 'Please enter a 4 digit number:\n'
n = gets.chomp.to_i

print 'Thousands Place:'
print n / 1000.to_i
print "\n"

print 'Hundreds Place:'
# % 1000 removes 1000 place then divide by 100 to get 100s place
print n % 1000 / 100.to_i
print "\n"

print 'Tens Place:'
# % 1000 removes 1000 place, % 100 removes 100s place, 
# and dividing by 10 gets 10s place
print n % 1000 % 100 / 10.to_i
print "\n"

print 'Ones Place:'
# use mod to remove places
print n % 1000 % 100 % 10.to_i
print "\n"
