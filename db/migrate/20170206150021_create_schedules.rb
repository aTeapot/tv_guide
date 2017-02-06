class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :channel, foreign_key: true, index: { unique: true }, null: false

      t.timestamps
    end
  end
end
