# See if the name "dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?('dino')

# correct but book used below
# same result
p advice.match?('dino')