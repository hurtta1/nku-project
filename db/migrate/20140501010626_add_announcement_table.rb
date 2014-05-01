class AddAnnouncementTable < ActiveRecord::Migration
  def change
    create_table :announcemnt do |t|
      t.string :title
      t.string :body
    end
  end
end
