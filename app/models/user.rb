class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :properties
  has_many :comments
  has_many :likes
  has_many :posts, :through => :postlocation

  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :followships
  has_many :followees, :through => :followships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
