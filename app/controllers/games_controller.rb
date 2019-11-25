# frozen_string_literal: true

class GamesController < ApplicationController
  def new
    @circuits = Circuit.all
    @players = Player.all
  end

  def create
    @game = Game.new
    @game.circuit_id = params[:game][:circuit_id]
    @game.save
    params[:game][:players].each do |id|
      @game.game_players.create(player_id: id) unless id.nil?
    end

    redirect_to @game
  end

  def show
    @game = Game.find(params[:id])
    @game_players = @game.game_players
  end

  def update
    @game = Game.find(params[:id])
    i = 0
    @game.game_players.each do |game_player|
      game_player.update(position: params[:game_results][:positions][i])
      i+=1
    end
    @game.update(finished: true)
    redirect_to @game
  end
end
