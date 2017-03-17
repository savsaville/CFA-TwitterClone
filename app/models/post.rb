class Post < ApplicationRecord
  belongs_to :user
  acts_as_likeable


  validates :user_id, :content, presence: true

end
