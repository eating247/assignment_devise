class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable, :rememberable, :trackable, and :omniauthable
  devise :database_authenticatable, :registerable,
          :validatable

  validates :username, :first_name, :last_name, presence: true
  validates :first_name, :last_name, :length => { :in => 1..50 }
end
