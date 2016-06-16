class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :users, null: false
      t.references :wikis, null: false
      t.boolean :admin?, null: false

      t.timestamps null: false
    end
  end
end
