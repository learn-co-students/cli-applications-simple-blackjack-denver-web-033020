def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  input=gets.chomp
end

def end_game(input)
  # code #end_game here
  if input >21
    puts "Sorry, you hit #{input}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  total= deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  input= get_user_input
  if input != 'h' && input != 's'
    invalid_command
    prompt_user
    input= get_user_input
  end
  
  if input == 'h'
    total+=deal_card
  elsif input == 's'
    total
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
  hand=initial_round
  card_total=hand
  
  until card_total >=21
    card_total= hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
