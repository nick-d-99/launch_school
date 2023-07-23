# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.
# file = File.open("1example.txt")
# file = '1example.txt'
file = 'gutenberg_text.txt'
content = File.read(file)
content = content.split(/[.|?|!]/)
# content.split 
# p content
# p content.length
result = ''
longest = 0
content.each do |sentence|
  words = sentence.split(/\s|\n/)
  count = 0
  words.each do |word|
    count += 1 if word.size >= 1
  end
  if count >= longest
    longest = count
    result = sentence
  end
end

p longest
p result
