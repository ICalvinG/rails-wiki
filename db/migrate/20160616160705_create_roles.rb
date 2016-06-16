class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :user, null: false
      t.references :wiki, null: false
      t.boolean :admin?, null: false

      t.timestamps null: false
    end
  end
end
