# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.
def swapcase(str)
  solution = []
  str.split.each do |word|
    swap = ''
    word.each_char do |char|
      if char == ' '
        swap << char
      elsif char == char.upcase
        swap << char.downcase
      else
        swap << char.upcase
      end
    end
    solution << swap
  end
  solution.join(' ')
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')
