# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :game_player
  has_one :game, through: :game_player
  has_one :player, through: :game_player

  validates :position, inclusion: { in: (1..8) }

  before_save :calc_score

  private

  def calc_score
    self.score = case position
                 when 1
                   3
                 when 2
                   2
                 when 3
                   1
                 else
                   0
                 end
  end
end
