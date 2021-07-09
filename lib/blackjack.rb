def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (current)
  prompt_user
  input = get_user_input
  if input == "s"
    return current
  end
  
  if input == "h"
    current += deal_card
  end
  
  if input != "s" && input != "h"
    invalid_command
    prompt_user
    get_user_input
  end
  
  current
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card = initial_round
  until card > 21 do
    card = hit?(card)
    display_card_total(card)
  end
  end_game(card)
end
    
