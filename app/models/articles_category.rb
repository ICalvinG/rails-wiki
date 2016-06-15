class ArticlesCategory < ActiveRecord::Base

  validates :article_id, :category_id, uniqueness: true

end
