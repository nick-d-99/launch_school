You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"



It will be the same object because the each method is manipulating the caller, in this case the variable 'str.'

Incorrect.

On an ok train of thought. The .each method is invoked on the caller, however the split method creates a new array of values ["hello", "world"]. So this is the value being manipulated; an array of the words, not the original "str" itself.