class User < ApplicationRecord
  has_many :reviews
  has_many :fontes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :country, presence: true
  validates :state, presence: true
  validates :city, presence: true

  
end
