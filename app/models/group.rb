class Group < ActiveRecord::Base

 validates :name, presence: true, length: {maximum: 30}

 include PgSearch
 multisearchable :against => [:name]

end
