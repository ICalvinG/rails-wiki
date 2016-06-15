class Article < ActiveRecord::Base
  has_many :categories, through: :articles_category
  has_many :snapshots

  validates :title, presence: true, length: {maximum: 20}
end
