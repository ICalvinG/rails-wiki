class Wiki < ActiveRecord::Base
  has_many :roles
  has_many :users

  validates :name, presence: true, length: {maximum: 30}

  def administered_by?(user)
    self.roles.any? do |role|
      role.admin? && role.user_id == user.id
    end
  end

end
