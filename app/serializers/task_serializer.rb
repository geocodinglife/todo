class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :position, :priority, :state
end
