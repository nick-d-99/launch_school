# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

def cleanup(phrase)
  # last = !!(phrase[0] =~ /[a-z]/)
  index = 0
  solution = ''
  last = false
  phrase.each_char do |char|
    index = char =~ /[a-z]/
    if index.nil?
      if last == false
        solution << ' '
        last = true
      end
    else
      solution << char
      last = false
    end
  end
  solution
end

p cleanup("---what's my +*& line?")

# classic, straightforward simple book solution:

# def cleanup(text)
#   text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end
