class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name, null: false
      t.text :description
      t.references :category, foreign_key: true, index: false

      t.timestamps
    end
  end
end
