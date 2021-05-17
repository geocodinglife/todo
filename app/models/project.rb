class Project < ApplicationRecord
  has_many :tasks
  has_many :groups
  has_many :user, through: :groups
end
