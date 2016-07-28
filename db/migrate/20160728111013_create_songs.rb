class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string   :title, null: false
      t.string   :sequence, null: false
      t.integer  :creator_id, null: false, foreign_key: true

      t.timestamps null: false
  end
end
