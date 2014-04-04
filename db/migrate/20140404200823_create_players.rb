class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :age
      t.boolean :coach
      t.boolean :pitcher
      t.boolean :catcher
      t.boolean :first
      t.boolean :second
      t.boolean :third
      t.boolean :short
      t.boolean :outfield      
    end
  end
end
