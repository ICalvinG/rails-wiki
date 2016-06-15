class Article < ActiveRecord::Base
  has_many :categories, through: :articles_category
  has_many :snapshots
  accepts_nested_attributes_for :snapshots

  validates :title, presence: true, length: {maximum: 20}
end
