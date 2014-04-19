class UpdateTeam < ActiveRecord::Migration
  def change
    add_column :players, :church, :string
  end
end
