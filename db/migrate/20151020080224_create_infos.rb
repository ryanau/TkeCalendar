class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :brother_name
      t.integer :quantity
      
      t.timestamps null: false
    end
  end
end
