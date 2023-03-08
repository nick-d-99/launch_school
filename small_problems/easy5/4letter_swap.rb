# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.
def swap_word(word)
  temp = word[0]
  word[0] = word[-1]
  word[-1] = temp
  word
end

def swap(sent)
  solution = []
  sent_a = sent.split(' ')
  sent_a.each { |word| solution << swap_word(word) }
  solution.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
