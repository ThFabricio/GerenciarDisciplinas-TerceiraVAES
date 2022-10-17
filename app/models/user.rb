class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, presence: true, length: { maximum: 50 }
  validates :email , presence: true, length: { maximum: 100, minimum: 5 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "E-mail inválido"}, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
