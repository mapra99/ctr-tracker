class Game < ApplicationRecord
  belongs_to :circuit
  has_many :game_players
  has_many :players, through: :game_players
  has_many :scores, through: :game_players
end
