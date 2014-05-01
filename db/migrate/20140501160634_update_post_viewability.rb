class UpdatePostViewability < ActiveRecord::Migration
  def change
    add_column(:posts, :official, :boolean)
  end
end
