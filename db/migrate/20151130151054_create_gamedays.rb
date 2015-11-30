class CreateGamedays < ActiveRecord::Migration
  def change
    create_table :gamedays do |t|
      t.integer :number
      t.integer :league_id

      t.timestamps null: false
    end
  end
end
