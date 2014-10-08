require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}!"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  return "lose" if player_score > 21 || player_score < bank_score
  return "black jack " if player_score == 21
  return "win" if player_score > bank_score && player_score != 21
end

def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  puts "Card ? (type 'y' or 'yes' for a new card)"
  answer = gets.chomp
  player_score = pick_player_card
  bank_score = pick_bank_score
  puts state_of_the_game(player_score, bank_score)

  endofgame = false
  player_score_2 = player_score

  while endofgame != true
    puts "Card ? (type 'y' or 'yes' for a new card)"
    answer = gets.chomp
      if answer == "no"
         endofgame = true
      elsif answer = "yes" || answer = "y"
         player_score_2 = player_score_2 + pick_player_card
         puts state_of_the_game(player_score_2, bank_score)
           if player_score_2 > 21
              endofgame = true
           else endofgame != true
           end
      end
  end
player_score = player_score_2
puts end_game_message(player_score, bank_score)
end
