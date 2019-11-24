class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :position
      t.integer :score

      t.timestamps
    end

    add_foreign_key :scores, :games
    add_foreign_key :scores, :players
  end
end
