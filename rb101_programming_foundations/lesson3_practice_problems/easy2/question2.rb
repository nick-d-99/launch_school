# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

# 1: "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
first = munsters_description.upcase
# p munsters_description
first.split.map.with_index do |word, idx|
  # p word, idx
   word[0] = word[0].swapcase
end
p first


# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
