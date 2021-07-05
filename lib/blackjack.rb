def welcome()
  # prints a welcome message to screen
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  # generates a random number between 1-11
  return rand(1...11)
end

def display_card_total(num)
  # accepts one argument, the card total
  # prints the value of the cards to the screen
  puts "Your cards add up to #{num}"
end

def prompt_user()
  # gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  # returns the value of a `gets.chomp` method here
  return gets.chomp()
end

def end_game(total)
  # prints apology, card total, and thank you message
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round()
  # calls on #deal_card twice and returns the sum
  num1 = deal_card
  num2 = deal_card
  total = num1 + num2
  display_card_total(total)
  return total
end

def hit?(current_total)
  # calls on #prompt_user then #get_user_input
  total = current_total
  # Ask the user if they want to "hit" or "stay"
  prompt_user()
  # capture their input
  response = get_user_input()

  if response == "h"# user requested new card
    new_card = deal_card()
    total += new_card
    return total
  elsif response == "s" # user chose to keep current hand
    return total
  else
    invalid_command()
    return hit?(total)
  end
end

def invalid_command()
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  total = initial_round()
  while total < 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
