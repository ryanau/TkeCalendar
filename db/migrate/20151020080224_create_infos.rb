class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :state
      t.string :city
      t.string :email
      
      t.timestamps null: false
    end
  end
end
