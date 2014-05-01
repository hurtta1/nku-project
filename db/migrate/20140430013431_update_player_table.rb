class UpdatePlayerTable < ActiveRecord::Migration
  def change
    add_column :players, :assigned, :boolean
  end
end
