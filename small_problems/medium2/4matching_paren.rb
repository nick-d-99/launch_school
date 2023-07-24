# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(phrase)
  open = 0
  balanced = true
  fresh = true
  phrase.each_char do |char|
    if char == '('
      open += 1
      balanced = false
    elsif char == ')'
      return false if fresh

      return false if balanced

      open -= 1
    end
    balanced = true if open.zero?
    fresh = false
  end
  return true if open.zero?

  false
end

p balanced?('test(') == false
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
