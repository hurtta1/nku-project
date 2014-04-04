class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :name
      t.string :email
      t.string :number
      t.boolean :official
      t.boolean :admin
    end
  end
end
