# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.
def test(min)
  hour, min = min.divmod(60)
  puts hour, min
end

def add_time(default_hour, default_min, add_hour, add_min)
  min = default_min + add_min
  hour = default_hour + add_hour
  # puts hour
  # puts min
  while min >= 60
    carry_hour, min = min.divmod(60)
    hour += carry_hour
  end
  # puts hour
  # puts min
  while hour >= 24
    hour, perc_hour = hour.divmod(24)
    p_min = (perc_hour * 60) / 100
    puts perc_hour
    puts p_min
    min += p_min
  end
  # puts hour
  # puts min
  [hour-1, min]
end

def sub_time()
  nil
end

def time_of_day(val)
  d_hour = ''
  d_min = ''

  neg = false
  if val.negative?
    val *= -1
    # neg = true
    d_hour = 0
    d_min = 0
  else
    d_hour = 24
    d_min = 60
  end

  hour, min = val.divmod(60)

  if neg
    sub_time()
  else
    hour, min = add_time(d_hour, d_min, hour, min)
  end
  puts "Hour #{hour}\nMin #{min}"
end

# p time_of_day(0)
# p time_of_day(-3)
# p time_of_day(35)
# p time_of_day(-1437)
# p time_of_day(3000)
# p time_of_day(800)
test(800)
# p time_of_day(-4231)
