# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

outcomes = ["It's a draw", "Player 1 wins", "Player 2 wins"]

puts "Player 1's move"
p1_move = gets.chomp.downcase
puts "Player 2's move"
p2_move = gets.chomp.downcase

if p1_move === p2_move
  puts outcomes[0]
else
  if p1_move === 'rock'
    if p2_move === 'paper'
      puts outcomes[2]
    elsif p2_move === 'scissors'
      puts outcomes[1]
    end
  elsif p1_move === 'paper'
    if p2_move === 'scissors'
      puts outcomes[2]
    elsif p2_move === 'rock'
      puts outcomes[1]
    end
  elsif p1_move === 'scissors'
    if p2_move === 'rock'
      puts outcomes[2]
    elsif p2_move === 'paper'
      puts outcomes[1]
    end
  end
end