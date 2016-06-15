class Snapshot < ActiveRecord::Base

  belongs_to :article

  validates :body, presence: true
  # validates :article, presence: true

end
