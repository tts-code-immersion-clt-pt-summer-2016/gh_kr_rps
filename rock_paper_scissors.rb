# Rock Paper Scissors Program
# By Gerrick Hilliard and Kevin Rocker
# For TTS Code Immersion, Part-Time, Summer 2016

def player_wins?(player_choice, comp_choice)
  bool = (player_choice == "rock" && comp_choice == "scissors") ||
         (player_choice == "scissors" && comp_choice == "paper") ||
         (player_choice == "paper" && comp_choice == "rock")
  return bool
end

def play_rps(max_score)
  options = ["rock", "paper", "scissors"]
  score = 0
  until score.abs >= max_score
    print "Enter selection (rock, paper, or scissors): "
    my_choice = gets.chomp.downcase
    # If option is valid...
    if options.include?(choice)
      # Randomly select AI choice
      ai_choice = options.sample
      # If choices are the same, tie.
      # Test for win, otherwise lose.
      if my_choice == ai_choice
        score += 0
      elsif player_wins?(my_choice, ai_choice)
        score += 1
      else
        score += -1
      end
    end
  end
  return score
end

final_result = play_rps(2)
puts "Final score is: #{final_result}"
