# frozen_string_literal: true

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
def century(year)
  # convert integer to string then split into an array
  year_a = year.to_s.split('')
  # initialize years array and pop off the last two digits which allows us to
  # to determine which century *** SEE EDGE CASE ON LINE 21 ***
  # the century is what remains in the original year_a variable after popping
  years = []
  years << year_a.pop
  years << year_a.pop

  # convert array to an integer
  # join needed to convert from array of strings to a singular string consisting
  # of contents of the array
  tens = years.join.to_i
  cent = year_a.join.to_i

  # account for a century being from 1901 - 2000
  # EDGE CASE, year 2000 is still  20th century but 2001 is 21st century
  cent += 1 if tens != 0

  # convert to string to figure out which suffix is needed
  cent_s = cent.to_s
  suffix(cent_s)
end

# helper function to determine which suffix is needed
# returns the correct string related to the final digit
def suff_case(num)
  suff = case num
         when '1'
           'st'
         when '2'
           'nd'
         when '3'
           'rd'
         else
           'th'
         end
  suff
end

# determines suffix
def suffix(cent)
  # if cent is of size 1, then there is no chance it is 11, 12, or 13
  if cent.size == 1
    last = cent[-1]
  # quick check to determine if the last two digits equate to 11, 12 or 13, and if
  # they do, return the correct suffix
  else
    # grab last two digits to check
    last = cent[-2..-1]
    if last == '11'
      return '11th'
    elsif last == '12'
      return '12th'
    elsif last == '13'
      return '13th'
    # else we only need the last digit to determine suffix
    else
      last = last[-1]
    end
  end

  # trim any fat ex: 2 instead of 02
  last = last.to_i.to_s
  # helper function returns string of correct suffix
  suff = suff_case(last)
  # put it all together and return
  complete = cent + suff
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10_103)
puts century(1052)
puts century(1127)
puts century(11_201)
puts century(3298472309848239048)

# as usual, books solution is much more simple
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
