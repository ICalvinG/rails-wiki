class Category < ActiveRecord::Base
  has_many :articles, through: :articles_category

  validates :name, presence: true, length: {maximum: 30}
end
