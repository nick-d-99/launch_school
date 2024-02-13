def print_in_box(phrase)
  # + 2 to pad each margin with some space before the
  # edges
  len = phrase.size + 2
  top = '+' + '-'*len + '+'
  mid = '|' + ' '*len + '|'
  line = '| ' + phrase + ' |'
  p top
  p mid
  p line
  p mid
  p top
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')