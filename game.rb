class Game
  def start
    puts "Welcome to the Math Game!"
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")
    puts "Let's begin!"
    play_round(player1, player2)
  end

  def play_round(player1, player2)
    puts "----- NEW TURN -----"

    question = Question.new
    puts "#{player1.name}:" 
    question.ask_question
    input = gets.chomp.to_i

    if !question.answer(input)
      player1.wrong
      puts ""
      puts "Seriously? No!"
      puts ""
    else
      puts ""
      puts "YES! You are correct!"
      puts ""
    end

    display_scores(player1, player2)

    if player1.lives == 0 || player2.lives == 0
      game_over(player1, player2)
    else
      play_round(player1, player2)
    end
  end

  def display_scores(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end

  def game_over(player1, player2)
    puts ""
  
    if player1.lives == 0
      winner = player2
      loser = player1
    else
      winner = player1
      loser = player2
    end
  
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----- GAME OVER -----"
  end
end
