def caps(word)
  if word.length >= 10
    word.upcase
  else
    word
  end 
end

puts caps('test')
puts caps('testtesttesttest')