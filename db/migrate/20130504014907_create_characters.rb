class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :series_1
      t.boolean :series_2

      t.timestamps
    end
  end
end
