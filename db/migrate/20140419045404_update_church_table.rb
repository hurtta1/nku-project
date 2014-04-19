class UpdateChurchTable < ActiveRecord::Migration
  def change
    rename_column :churches, :name, :cname
  end
end
