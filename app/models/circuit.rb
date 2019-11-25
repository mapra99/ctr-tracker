# frozen_string_literal: true

class Circuit < ApplicationRecord
  has_many :games
  has_many :game_players, through: :games, source: :game_players

  validates :name, uniqueness: true, presence: true

  def winner
    game_players.select('player_id, sum(score) as score').group(:player_id).where('score > 0').order(score: :desc).first
  end
end
