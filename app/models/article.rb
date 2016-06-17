class Article < ActiveRecord::Base
  belongs_to :wiki
  belongs_to :user
  has_many :articles_category
  has_many :categories, through: :articles_category
  has_many :snapshots
  accepts_nested_attributes_for :snapshots

  validates :title, presence: true, length: {maximum: 20}

	

end
