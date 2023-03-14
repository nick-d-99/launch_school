# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch(str)
  str_a = str.chars
  str_a.each_with_index do |char, idx|
    comp_idx = idx + 1
    if char == str_a[comp_idx]
      str_a.delete_at(comp_idx) while str_a[comp_idx] == char
    end
  end
  solution = str_a.join
  solution
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
