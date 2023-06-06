# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
WORDS =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def display(solution)
  solution.each { |arr| p arr }
end

def anagrams
  result = []
  pools = Hash.new { |k, v| k[v] = [] }
  WORDS.each do |word|
    alpha = word.chars.sort
    pools[alpha] << word
  end
  pools.each do |_, val|
    result << val
  end
  result
end

display(anagrams)

# for once, I like my solution better

# was stumped yesterday, thought about it at work and slept on it and was able to
# solve today
