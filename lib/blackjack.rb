def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  p rand(1..10)
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
  num = deal_card + deal_card
  display_card_total(num)
  return num 
end

def hit?(number)
  result = number
  prompt_user
  input = get_user_input
  if input == "h"
    result += deal_card
    
    return result
  elsif input != "h" and input != "s"
    invalid_command
    
    hit?(number)
  else
    return result
  end
end

def invalid_command
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to passs before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21 do
    num = hit?(num)
    display_card_total(num)
  end
  end_game(num)
end
    
