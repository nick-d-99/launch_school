# Let's build another program using madlibs. We made a program like this in the easy exercises. This time, the requirements are a bit different.

# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

NOUNS = ['shed', 'dehumidifier', 'pool noodle']
ADJ = ['gross', 'argumentative', 'hairy']
VERB = ['oxidizes', 'jumps', 'gathers']
ADVERB = ['quickly', 'happily', 'supportively']


def get_noun
  NOUNS.sample
end

def get_adj
  ADJ.sample
end

def get_verb
  VERB.sample
end

def get_adverb
  ADVERB.sample
end

def replace(arr, part, loc)
  case part
  when '%{noun}'
    arr[loc] = get_noun
  when '%{adjective}'
    arr[loc] = get_adj
  when '%{verb}'
    arr[loc] = get_verb
  when '%{adverb}'
    arr[loc] = get_adverb
  end
  # p arr
  # p part
  # p loc
end

path_str = "madlibs.txt"
# file = File.open("madlibs.txt")
word_arr = []
# File.foreach(path_str) do |line|
#     # line.split.each { |word| word_arr << word }
#     word_arr << line
# end
File.readlines(path_str).each { |line| word_arr << line }
# word_arr.each_with_index do |line,  idx|
sol = []
word_arr.each do |line|
  line_arr = line.split
  line_arr.each_with_index do |word, idx|
    if word.start_with?('%')
      until word.end_with?('}')
        word.chop!
      end
      replace(line_arr, word,idx)
    end
  end
  # sol << line_arr
  sol << line_arr.join(' ')
end

puts sol

# this code will overwrite the file with the replacement parts of speech

# File.open(path_str, 'w+') do |f|
#   sol.each { |line| f.write(line+"\n") }
# end
