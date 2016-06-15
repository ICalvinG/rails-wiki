class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.string   :body, null: false
      t.references :article
      t.references :user

      t.timestamps null: false
    end
  end
end
