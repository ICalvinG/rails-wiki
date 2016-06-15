class Snapshot < ActiveRecord::Base

  validates :body, presence: true

end
