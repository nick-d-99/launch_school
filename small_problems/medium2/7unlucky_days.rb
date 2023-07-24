# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.
require 'date'

def friday_13th(year)
  count = 0
  day = '13'
  year.to_s
  (1..12).each do |month|
    month.to_s
    str = "#{year}-#{month}-#{day}"
    date = Date.parse(str)
    count += 1 if date.wday == 5
  end
  count
end

p friday_13th(2023) == 2
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
