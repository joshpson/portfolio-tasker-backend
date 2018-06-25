class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :due_date, :project_id, :status
  belongs_to :project
end
