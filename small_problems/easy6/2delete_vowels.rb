# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(arr)
  solution = []

  arr.each do |str|
    str.each_char do |char|
      str.delete! char if VOWELS.include? char.downcase
    end
    solution << str
  end
  p solution
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))

# another elegant book solution

# def remove_vowels(strings)
#    strings.map { |string| string.delete('aeiouAEIOU') }
# end
