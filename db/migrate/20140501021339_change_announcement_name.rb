class ChangeAnnouncementName < ActiveRecord::Migration
  def change
    rename_table :announcement, :post
  end
end
