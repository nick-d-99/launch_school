# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

def format_time(unformat_mins)
  hour, min = unformat_mins.divmod(60)
  hour, = hour.divmod(24) if hour > 24

  [hour, min]
end

def pretty(ugly)
  pretty = ugly.to_s
  pretty.prepend('0') if pretty.size < 2
  pretty
end

def time_of_day(raw_min)
  neg = raw_min.negative?
  raw_min *= -1 if neg

  hour, min = format_time(raw_min)

  if neg
    hour = 24 - hour - 1
    min = 60 - min
  end

  hour_s = pretty(hour)
  min_s = pretty(min)
  hour_s + ':' + min_s
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

# solution for -4231 is "01:29" but I cannot figure out why
# even if I do the math in my head I get what my code outputs
# 4231 minutes is 70.51 hours. 70 hours before 00:00 would be 2 days and almost 3
# hours which would be hour 21. I'm not sure where the solution's 01 is coming from
# I suspect it has to do with how many times the clock cycles? Too tired to continue
# right now: 6:50pm 3/6/23
