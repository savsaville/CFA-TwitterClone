class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  acts_as_likeable



  validates :user_id, :content, presence: true

end
