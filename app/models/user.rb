class User < ApplicationRecord
  has_many :canvas_users, dependent: :destroy
  has_many :canvasses, through: :canvas_users
  has_many :canvas_items

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable


end
