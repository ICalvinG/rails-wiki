class ArticlesCategory < ActiveRecord::Base
  belongs_to :article
  belongs_to :category

  validates :article_id, :category_id, uniqueness: true
end
