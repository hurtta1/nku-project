class UpdateTeamTable < ActiveRecord::Migration
  def change
    add_column :teams, :numplayers, :integer
    add_column :teams, :approved, :boolean
    add_column :teams, :scheduled, :boolean
  end
end
