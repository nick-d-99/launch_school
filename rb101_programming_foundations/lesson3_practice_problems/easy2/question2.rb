# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

# 1: "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
first = munsters_description.upcase
first.gsub!('THE', 'tHE')
first.gsub!('MUNSTERS', 'mUNSTERS')
p first


# "The munsters are creepy in a good way."
second = munsters_description.capitalize
p second

# "the munsters are creepy in a good way."
third = munsters_description.downcase
p third

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
fourth = munsters_description.upcase
p fourth

