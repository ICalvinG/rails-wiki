class Wiki < ActiveRecord::Base
  has_many :roles
  has_many :users
  
  validates :name, presence: true, length: {maximum: 30}
end
