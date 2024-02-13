curr_year = Time.new.year 

p 'What is your age?'
age = gets.chomp.to_i

p 'At what age would you like to retire?'
desired = gets.chomp.to_i

year_gap = desired - age

p "It's #{curr_year}. You will retire in #{curr_year + year_gap}."
p "You have only #{year_gap} years of work to go!"
