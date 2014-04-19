class ChangeTableChurchName < ActiveRecord::Migration
  def change
    rename_table :church, :churches
  end
end
