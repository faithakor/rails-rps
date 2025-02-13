class GameController < ApplicationController
  def index
  end

  def play
    player_move = params[:move]
    computer_move = ['rock', 'paper', 'scissors'].sample
    @result = determine_winner(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end

  private

  def determine_winner(player_move, computer_move)
    return "We tied!" if player_move == computer_move
    
    winning_combinations = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper'
    }
    
    if winning_combinations[player_move] == computer_move
      "We won!"
    else
      "We lost"
    end
  end
end
