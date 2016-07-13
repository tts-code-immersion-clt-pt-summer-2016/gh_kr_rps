options = ["rock", "paper", "scissors"]
victors = ["paper", "scissors", "rock"]
score = 0

until score.abs > 5
  print "Enter selection (rock, paper, or scissors): "
  choice = gets.chomp.downcase
  if options.include?(choice)
    choice_id = options.index(choice)
    op_choice = options.sample
    if choice == op_choice
      # Tie
    elsif choice == victor
      # Win
    else
      #Loss
    end  
  end
end
