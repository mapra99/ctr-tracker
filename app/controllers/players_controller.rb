# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @total_scores = GamePlayer.total_scores
    @circuits = Circuit.all
    @world_king = GamePlayer.world_king
  end
end
