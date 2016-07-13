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
      score += 0
    elsif choice == victors[choice_id]
      score += 1
    else
      score += -1
    end
  end
end
