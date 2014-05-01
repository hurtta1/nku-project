class AddPassDigOfficials < ActiveRecord::Migration
  def change
    add_column :officials, :password_confirmation, :string
  end
end
