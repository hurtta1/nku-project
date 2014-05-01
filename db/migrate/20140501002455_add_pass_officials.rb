class AddPassOfficials < ActiveRecord::Migration
  def change
    add_column :officials, :password, :string
  end
end
