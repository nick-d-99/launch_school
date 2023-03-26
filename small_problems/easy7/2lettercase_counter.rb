# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def letter_case_count(str)
  solution = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    # if char == char.upcase
    #   solution[:uppercase] += 1
    # elsif char == char.downcase
    #   solution[:lowercase] += 1
    # else
    #   solution[:neither] += 1
    # end

    lower = char.downcase
    if ALPHABET.include?(lower)
      if lower == char
        solution[:lowercase] += 1
      else
        solution[:uppercase] += 1
      end
    else
      solution[:neither] += 1
    end
  end

  solution
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')
