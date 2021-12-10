class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :tasks
  has_many :lists
  has_many :ideas
  # validates :pseudo, presence: true, uniqueness: true
  # validates :telephone, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :color, presence: true, uniqueness: true
end
