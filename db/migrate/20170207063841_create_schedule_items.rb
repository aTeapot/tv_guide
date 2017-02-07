class CreateScheduleItems < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_items do |t|
      t.datetime :air, null: false
      t.references :show, foreign_key: true, null: false
      t.references :schedule, foreign_key: true, null: false
      t.index :air

      t.timestamps
    end
  end
end
