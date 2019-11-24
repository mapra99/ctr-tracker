class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :circuit_id
      t.integer :laps
      t.string :difficulty
      t.boolean :mirror

      t.timestamps
    end

    add_foreign_key :games, :circuits
  end
end
