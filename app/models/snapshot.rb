class Snapshot < ActiveRecord::Base

  belongs_to :article
  belongs_to :user

  validates :body, presence: true
  # validates :article, presence: true

end
