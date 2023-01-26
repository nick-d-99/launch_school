require "pry"

# def string_lengths(sentence)
#   strings = sentence.split

#   strings.map { |chars| chars.length }
# end

# puts string_lengths('To be or not to be')

def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  binding.pry
  end
end

puts string_lengths('To be or not to be')

=begin

struggled with this one

it does not return [2, 2, 2, 3, 2, 2] because ruby returns whatever is evaluated last
this means the the return will be the the string.each block, not the "length << string.size" 
line

=end