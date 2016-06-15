class Article < ActiveRecord::Base
  has_many :categories, through: :articles_category

  validates :title, presence: true, length: {maximum: 20}
end
