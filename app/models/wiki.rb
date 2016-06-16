class Wiki < ActiveRecord::Base
  has_many :roles
  has_many :users
  
  validates :name, presence: true, length: {maximum: 30}

  def self.wiki_admin_access?(current_user, wiki)
    Role.find_by(user_id: current_user.id, admin?: true, wiki_id: wiki.id)
  end

end
