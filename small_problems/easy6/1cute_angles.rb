# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
def separate(decimal)
  int, dec = decimal.divmod(1)
  [int, dec]
end

def dms(val)
  until val >= 0 && val <= 360
    if val.negative?
      val = 360 + val
    else
      val -= 360
    end
  end

  int, dec = separate(val)
  dec = Float(dec * 100)

  min = dec * 60 / 100

  _, sec_dec = separate(min)
  min = Integer(min)

  sec = (sec_dec * 60)
  sec = Integer(sec)

  puts "#{int}#{DEGREE}#{min}'#{sec}\""
end

# dms(30)
# dms(76.73)
# dms(254.6)
# dms(93.034773)
# dms(0)
# dms(360)
dms(400)
dms(-40)
dms(-420)
