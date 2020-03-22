def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  card_sum
end

def hit?(current_total)
  # code #hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    current_total = current_total + deal_card
    display_card_total(current_total)
    current_total
  elsif user_input  ==  "s"
    current_total
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_sum = initial_round
  until card_sum > 21 do
    card_sum = hit?(card_sum)
  end
end_game(card_sum)
end
