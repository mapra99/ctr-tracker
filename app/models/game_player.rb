class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_one :score
end
