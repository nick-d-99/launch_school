# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.
def leading_substrings(str)
  result = [str[0]]
  i = 0
  str.each_char do
    if i.zero?
      i += 1
      next
    end
    result << str[0..i] && i += 1
  end
  result
end

def substrings(str)
  result = []
  (0...str.size).each do |start_index|
    sub = str[start_index..-1]
    result << leading_substrings(sub)
  end
  result
end

def palindromes(str)
  str_a = str.split
  palin = []
  str_a.each do |word|
    all = substrings(word)
    all.each do |sub_a|
      sub_a.each do |sub|
        palin << sub if palindrome?(sub) && sub.size > 1
      end
    end
  end
  palin
end

def palindrome?(str)
  chars = str.chars
  if str.size == 2
    return true if str[0] == str[1]
    return false
  end

  first = []
  second = []

  chars.each_with_index do |char, idx|
    if idx > (chars.size / 2) - 1
      second << char
    else
      first << char
    end
  end

  # first.pop if str.size.odd?
  second.shift if str.size.odd?
  second.reverse!
  first == second
end

# p palindrome?('aa')
# p palindrome?('madam')
p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
# p palindrome?('adda')
# p palindrome?('ada')
# p palindrome?('nittin')

# got the solution but book is much simpler

# palindrome function looked like this:

# def palindrome?(string)
# string == string.reverse && string.size > 1
# end
