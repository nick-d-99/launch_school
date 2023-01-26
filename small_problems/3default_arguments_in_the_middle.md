Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

Use the ruby documentation to determine what this code will print.

#=> [4, 5, 3, 6]


*** Copied and pasted from https://docs.ruby-lang.org/en/2.4.0/syntax/calling_methods_rdoc.html ***

Describing this in words gets complicated and confusing. I'll describe it in variables and values instead.

First 1 is assigned to a, then 6 is assigned to d. This leaves only the arguments with default values. Since 5 has not been assigned to a value yet, it is given to b and c uses its default value of 3.

*** Copied and pasted from https://docs.ruby-lang.org/en/2.4.0/syntax/calling_methods_rdoc.html ***