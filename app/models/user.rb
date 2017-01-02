class User < ActiveRecord::Base
  has_many :H200s
  has_many :H727s
  has_many :H339s
  has_many :H500s
  has_many :H510s
  has_many :H725s
  has_many :H735s
  has_many :H738s
  has_many :H100s
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
