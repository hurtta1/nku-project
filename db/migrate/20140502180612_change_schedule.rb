class ChangeSchedule < ActiveRecord::Migration
  def change
    rename_table :schedules, :events
  end
end
