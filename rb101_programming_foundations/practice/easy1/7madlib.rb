def madlib
  p 'Enter a noun: '
  noun = gets.chomp
  p 'Enter a verb: '
  verb = gets.chomp
  p 'Enter an adjective: '
  adj = gets.chomp
  p 'Enter an adverb: '
  adv = gets.chomp
  p "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!" 
end

madlib