class Player < ApplicationRecord
  has_many :game_players
  has_many :games, through: :game_players

  validates :name, uniqueness: true, presence: true

  def self.king
    order
  end
end