VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

# each key contains values of values that the key beats
# ex: the key 'scissors' contains values that it beats: 'paper' and 'spock'
WIN_CONDITIONS = { 'rock' => ['scissors', 'lizard'],
                   'paper' => ['rock', 'spock'],
                   'scissors' => ['paper', 'spock'],
                   'lizard' => ['spock', 'lizard'],
                   'spock' => ['rock', 'scissors'] }

def prompt(message)
  puts "=> #{message}"
end

# utilizes the WIN_CONDITIONS hash to simpily win logic
def win?(p1, p2)
  if WIN_CONDITIONS[p1].include?(p2)
    true
  end
end

def results(player, computer)
  # displays choices
  prompt "You chose: #{player}; Computer chose: #{computer}"
  # if true, player one and returns string 'player' to increment win count
  if win?(player, computer)
    prompt('You won!')
    'player'
    # same as above but player and computer swapped as arguments
  elsif win?(computer, player)
    prompt('Computer won!')
    'computer'
  else
    prompt("It\'s a tie!")
    'tie'
  end
end

def menu(option)
  # assosiates single letter menu options with fully written word
  # worth noting whole program can be simplified to single letter
  result = case option
           when 'r'
             'rock'
           when 'p'
             'paper'
           when 's'
             'scissors'
           when 'l'
             'lizard'
           when 'sp'
             'spock'
           end
  result
end

def display_score(p1, p2, score1, score2)
  prompt "#{p1}\'s Score: #{score1}"
  prompt "#{p2}\'s Score: #{score2}"
end

# initialize scores
player_score = 0
computer_score = 0

# welcome prompt
prompt('Welcome to Rock Paper Scissors Lizard Spock')
prompt('Please enter your name:')
player_name = gets.chomp

# initialize winner variables
winner = ''
game_winner = ''

# main game loop
loop do
  # gets player's choice
  puts "\n"
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  prompt('r: rock, p: paper, s: scissors, l: lizard, sp: spock')
  choice = gets.chomp

  # convert valid choices to be their first letter for user input simplicity
  first = VALID_CHOICES.map { |valid| valid[0] }
  # edge case of spock and scissors both beginning with s
  spock_i = VALID_CHOICES.find_index('spock')
  first[spock_i] = 'sp' if spock_i

  # computer's random choice
  computer_choice = first.sample

  # converts to full words for win logic in above methods
  choice = menu(choice)
  computer_choice = menu(computer_choice)

  # save the return of the results method to increment scores
  winner = results(choice, computer_choice)
  if winner == 'player'
    player_score += 1
  elsif winner == 'computer'
    computer_score += 1
  end

  # display score for user
  display_score(player_name, 'Computer', player_score, computer_score)

  # stops after 3 wins from either player
  break if player_score == 3 || computer_score == 3

  # play again loop
  puts "\n"
  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# displays full game winner, not each round
if winner == 'player'
  game_winner = player_name
else
  game_winner = 'Computer'
end

puts "\n"
prompt("#{game_winner} won the game!")
prompt('Thanks for playing!')
