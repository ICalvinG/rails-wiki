class CreateArticlesCategories < ActiveRecord::Migration
  def change
    create_table :articles_categories do |t|
      t.references :article, null: false
      t.references :category, null: false

      t.timestamps null: false
    end
  end
end
