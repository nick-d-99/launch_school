# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

BLOCKS = {
  B: 'O',
  X: 'K',
  D: 'Q',
  C: 'P',
  N: 'A',
  G: 'T',
  R: 'E',
  F: 'S',
  J: 'W',
  H: 'U',
  V: 'I',
  L: 'Y',
  Z: 'M'
}

def block_word?(word)
  banned = []
  word.each_char do |char|
    char.upcase!
    if banned.include?(char)
      return false
    else
      key_check = BLOCKS.key(char)
      if BLOCKS.key?(char.to_sym)
        banned << char
        banned << BLOCKS[char.to_sym]
      elsif key_check
        banned << char
        banned << key_check.to_s
      end
    end
  end
  # p banned
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('moz') == false
p block_word?('er') == false
p block_word?('erdjksgfahsjkldfhas') == false

# need to accout for values
# right now the program added looks at keys
# for example, if the letter M is used, Z cannot be in the word
# however the way I wrote it, it doesn't add Z to the array of banned letters
# because M is a VALUE not a KEY
