class FixPostTable < ActiveRecord::Migration
  def change
    rename_table :post, :posts
  end
end
