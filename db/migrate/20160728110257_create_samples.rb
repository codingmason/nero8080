class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string   :name, null: false, unique: true
      t.string   :url, null: false, unique: true

      t.timestamps null: false
    end
  end
end
