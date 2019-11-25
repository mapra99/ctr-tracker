class PlayersController < ApplicationController
  def index
    @total_scores = GamePlayer.total_scores
    @circuits = Circuit.all
  end
end
