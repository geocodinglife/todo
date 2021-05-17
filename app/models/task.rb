class Task < ApplicationRecord
  belongs_to :project
  has_many :categories, :as => :categoryable

  PRIORITY_LIST = %[high medium low].freeze
end
