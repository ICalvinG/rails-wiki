class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :wiki

  validates :user, :wiki, presence: true
end
