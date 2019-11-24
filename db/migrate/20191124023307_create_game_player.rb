class CreateGamePlayer < ActiveRecord::Migration[6.0]
  def change
    create_table :game_players do |t|
      t.integer :game_id
      t.integer :player_id

      t.timestamps
    end

    add_foreign_key :game_players, :games
    add_foreign_key :game_players, :players
  end
end
