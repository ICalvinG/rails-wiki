class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string   :name, null: false
      t.references :users
      
      t.timestamps null: false
    end
  end
end
