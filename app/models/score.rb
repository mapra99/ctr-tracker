class Score < ApplicationRecord
  belongs_to :game_player
  has_one :game, through: :game_player
  has_one :player, through: :game_player
end
