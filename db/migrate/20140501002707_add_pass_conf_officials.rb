class AddPassConfOfficials < ActiveRecord::Migration
  def change
    add_column :officials, :password_digest, :string
  end
end
