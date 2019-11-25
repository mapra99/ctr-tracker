class Game < ApplicationRecord
  before_validation :default_options

  belongs_to :circuit
  has_many :game_players
  has_many :players, through: :game_players

  validates :laps, inclusion: { in: (1..7) }
  validates :difficulty, inclusion: { in: %w[easy medium hard],
                                      message: 'Value must be easy, medium or hard' }
  validates :mirror, inclusion: { in: [true, false] }

  private

  def default_options
    self.laps ||= 7
    self.difficulty ||= "hard"
    self.mirror ||= false
  end
end
