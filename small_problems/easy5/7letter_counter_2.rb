# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.
def word_sizes(words)
  word_a = words.split(' ')
  word_count = {}
  word_a.each do |word|
    length = length(word)
    if word_count[length]
      word_count[length] += 1
    else
      word_count[length] = 1
    end
  end
  word_count
end

def length(word)
  length = 0
  # length += 1 if word.each_char { |char| !(char =~ /[a-z]/) }
  word.each_char do |char|
    length += 1 if char =~ /[A-Za-z]/
    #   length += 1
    # end
  end
  length
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

# book deleted characters:
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end

# i used regex to ignore non letters
