class Post < ApplicationRecord
  belongs_to :user
  # acts_as_likeable


  validates :user_id, :description, presence: true

end
