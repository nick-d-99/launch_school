=begin

Write a method that will take a short line of text, and print it within a box.

Example:

```ruby
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
```

```ruby
print_in_box('')
+--+
|  |
|  |
|  |
+--+
```

You may assume that the input will always fit in your terminal window.

=end

def print_in_box(str)
  length = str.length
  border_half = '+-'
  spacer_half = '| '
  (length / 2).times { border_half += '-'; spacer_half += ' ' }
  border = border_half + border_half.reverse
  # (length / 2).times { }
  spacer = spacer_half + spacer_half.reverse

  text = '| ' + str + ' |'

  p border
  p spacer
  p text
  p spacer
  p border
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
