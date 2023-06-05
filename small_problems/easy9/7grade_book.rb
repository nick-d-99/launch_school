# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

def letter_grade(grade)
  case
  when grade <= 100 && grade >= 90
    'A'
  when grade < 90 && grade >= 80
    'B'
  when grade < 80 && grade >= 70
    'C'
  when grade < 70 && grade >= 60
    'D'
  else
    'F'
  end
end

def get_grade(n1, n2, n3)
  avg = (n1 + n2 + n3) / 3
  grade = letter_grade(avg)
  grade
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)

# book used a trick to avoid all the greater and less thans
# case result
# when 90..100 then 'A'
# when 80..89  then 'B'
# when 70..79  then 'C'
# when 60..69  then 'D'
# else              'F'
# end