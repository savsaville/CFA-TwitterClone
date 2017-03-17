class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  has_many :posts
  acts_as_liker
  acts_as_follower
  acts_as_followable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
