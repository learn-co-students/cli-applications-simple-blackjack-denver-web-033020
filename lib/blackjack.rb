def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  puts "h", "s", "exit"
  # code #get_user_input here
  user_input
end

def end_game(card_total)
  if card_total > 21
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
 end
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
  
  # code #initial_round here

end 

def hit?(total)
  prompt_user
  
  user_input = get_user_input
  if user_input == 'h' 
    sum = deal_card + total
    sum 
  elsif user_input == 's'
    total
  else get_user_input
    invalid_command 
    prompt_user
  end 
  # code hit? here
end

def invalid_command
  puts 'Please enter a valid command'
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = initial_round
  welcome
  until card_total > 21 
  card_total = hit? (card_total)
  display_card_total(card_total)
end 
  end_game(card_total)
  # code runner here
end

    
