# frozen_string_literal: true

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
def century(year)
  year_a = year.to_s.split('')
  years = []
  years << year_a.pop
  years << year_a.pop

  tens = years.join.to_i
  cent = year_a.join.to_i

  cent += 1 if tens != 0

  cent_s = cent.to_s
  suffix(cent_s)
end

def suffix(cent)
  if cent == '11'
    return '11th'
  elsif cent == '12'
    return '12th'
  elsif cent == '13'
    return '13th'
  end
  last = cent[-1]
  suff = case last
         when '1'
           'st'
         when '2'
           'nd'
         when '3'
           'rd'
         else
           'th'
         end
  complete = cent + suff
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)

# puts suffix(20)
# puts suffix(102)
