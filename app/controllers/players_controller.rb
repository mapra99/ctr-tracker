class PlayersController < ApplicationController
  def index
    @total_scores = GamePlayer.total_scores
    @world_king = GamePlayer.world_king
    @circuits = Circuit.all
  end
end
