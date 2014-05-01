class FixAnnouncementTableName < ActiveRecord::Migration
  def change
    rename_table :announcemnt, :announcement
  end
end
