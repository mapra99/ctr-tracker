class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game

  before_save :calc_score

  private

  def calc_score
    self.score = case self.position
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
