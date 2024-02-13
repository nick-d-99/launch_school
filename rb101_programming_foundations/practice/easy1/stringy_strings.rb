def stringy(num)
  result = '1'
  alt = true
  (num - 1).times do |count|
    if alt
      result << '0'
      alt = false
    else
      result << '1'
      alt = true
    end
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'