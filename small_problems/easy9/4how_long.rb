# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.
def word_lengths(phrase)
  solution = []
  phrase.split.each { |word| solution << "#{word} #{word.size}" }
  solution
end

p word_lengths("cow sheep chicken")

p word_lengths("baseball hot dogs and apple pie")

p word_lengths("It ain't easy, is it?")

p word_lengths("Supercalifragilisticexpialidocious")

p word_lengths("")
