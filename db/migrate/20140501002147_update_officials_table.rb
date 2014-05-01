class UpdateOfficialsTable < ActiveRecord::Migration
  def change
    add_column :officials, :username, :string
  end
end
