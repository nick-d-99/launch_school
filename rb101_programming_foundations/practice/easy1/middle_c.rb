def center_of(word)
  len = word.size
  return word[len/2] if len.odd?
  word[len/2 - 1] + word[len/2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'