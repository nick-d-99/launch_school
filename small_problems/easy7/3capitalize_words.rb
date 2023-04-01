# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.
def word_cap(str)
  result = ""
  space = false
  str.each_char.with_index do |char, idx|
    result << char.upcase and next if idx.zero?

    if char == ' '
      space = true
      result << char.downcase
    elsif space
      result << char.upcase
      space = false
    else
      # p char
      result << char.downcase
    end
  end
  result
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')

# my solution works with the exception of escape character
# not sure why the output is not escaping the "quoted" part of the string
# regardless, the books solution is much more succinct

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end
