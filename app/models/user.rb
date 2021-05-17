class User < ApplicationRecord
  has_many :categories, as: :categoryable
  has_many :groups
  has_many :projects, through: :groups

  # validates :name, :last_name, :cellphone, :birthdate, presence: :true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
end
