def reversed_number(num)
  chars = num.to_s.chars
  result = []
  size = chars.size
  
  chars.each_index do |idx|
    # why the - 1?
    # because the size variable uses chars.size which would
    # be 1 too many when indexing due to starting with 0
    # when indexing
    result[size - idx - 1] = chars[idx]
  end
  result.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1