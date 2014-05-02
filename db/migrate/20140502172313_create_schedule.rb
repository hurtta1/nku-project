class CreateSchedule < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :location
      t.string :description
      t.timestamps
    end
  end
end
