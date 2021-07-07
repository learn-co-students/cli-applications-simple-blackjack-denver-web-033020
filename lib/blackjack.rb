def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  puts "Your new card is #{card}"
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card 
  card_total=card_total+deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_total)
  prompt_user
user_input = get_user_input
  if user_input == "h"
  current_total=current_total+deal_card
  display_card_total(current_total)
current_total
elsif user_input=="s"
  current_total
else
invalid_command
prompt_user
get_user_input
end
end


def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
  sum_cards=initial_round
  until sum_cards >21 do 
    sum_cards = hit?(sum_cards)
  end
  end_game(sum_cards)
end
    
