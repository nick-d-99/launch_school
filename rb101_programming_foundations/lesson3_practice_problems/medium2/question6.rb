# How could the following method be simplified without changing its return value?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

p color_valid("blue")
p color_valid("green")
p color_valid("test")

# correct but can be simplified more
# book solution:

# def color_valid(color)
#   color == "blue" || color == "green"
# end

# no ternery operator