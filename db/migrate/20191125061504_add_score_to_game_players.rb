class AddScoreToGamePlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :game_players, :position, :integer
    add_column :game_players, :score, :integer
  end
end
