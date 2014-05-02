class UpdateSchedules < ActiveRecord::Migration
  def change
    add_column(:schedules, :eventdate, :datetime)
  end
end
