class AlterChurchFieldname < ActiveRecord::Migration
  def change
    add_column :teams, :cname, :string
  end
end
