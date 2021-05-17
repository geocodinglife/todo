class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date
  has_one :user
  has_one :task
end
