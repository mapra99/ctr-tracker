# frozen_string_literal: true

class Circuit < ApplicationRecord
  has_many :games
  has_many :game_players, through: :games, source: :game_players

  validates :name, uniqueness: true, presence: true

  def winner
    game_players.select('player_id, sum(score) as total_score').group(:player_id).order(total_score: :desc).first
  end
end
