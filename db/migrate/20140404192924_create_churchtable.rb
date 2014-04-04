class CreateChurchtable < ActiveRecord::Migration
  def change
    create_table :church do |t|
      t.string :church_name
      t.string :email
    end
  end
end
