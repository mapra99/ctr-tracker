class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :position
      t.integer :score
      t.integer :game_player_id

      t.timestamps
    end

    add_foreign_key :scores, :game_players
  end
end
