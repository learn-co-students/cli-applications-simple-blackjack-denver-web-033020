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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  while input != "h" && input != "s"
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 's'
    return current_card_total
  elsif input == 'h'
    new_card = deal_card
    current_card_total += new_card
    return current_card_total
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
  new_value = initial_round
  until new_value > 21
    new_value = hit?(new_value)
    display_card_total(new_value)
  end
  end_game(new_value)
end
