class Game < ApplicationRecord
  belongs_to :circuit
  has_many :game_players
  has_many :players, through: :game_players
  has_many :scores, through: :game_players

  validates :laps
  validates :difficulty, inclusion: { in: %w[easy medium hard]},
                                      message: 'Value must be easy, medium or hard' }
  validates :mirror, inclusion: { in: [true, false] }
end
