# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.
ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def letter_percentages(phrase)
  total = 0
  lower_c = 0
  upper_c = 0
  neither_c = 0
  solution = { lowercase: 0, uppercase: 0, neither: 0 }

  phrase.each_char do |char|
    total += 1
    lower = char.downcase
    if ALPHABET.include?(lower)
      if lower == char
        lower_c += 1
      else
        upper_c += 1
      end
    else
      neither_c += 1
    end
  end

  total = total.to_f
  solution[:lowercase] = (lower_c.to_f / total) * 100.0
  solution[:uppercase] = (upper_c.to_f / total) * 100.0
  solution[:neither] = (neither_c.to_f / total) * 100.0

  # p solution
  solution
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
