class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :price

      t.timestamps null: false
    end
  end
end
