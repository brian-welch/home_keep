class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buildings, dependent: :destroy
  has_many :rooms, through: :buildings, dependent: :destroy
  belongs_to :user_role
end
