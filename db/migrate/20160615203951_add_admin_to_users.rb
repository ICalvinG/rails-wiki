class AddAdminToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.column :admin?, :boolean, null: false, default: false
    end
  end
end
