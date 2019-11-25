# frozen_string_literal: true

class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_one :circuit, through: :game, source: :circuit

  before_save :calc_score

  scope :total_scores, -> { select(:player_id, 'sum(score) as score').group('player_id').order(score: :desc) }

  def self.world_king
    max_score = total_scores.first.score
    best_players = total_scores.count do |t|
      t.score == max_score
    end
    best_players == 1 ? total_scores.first : nil
  end

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
