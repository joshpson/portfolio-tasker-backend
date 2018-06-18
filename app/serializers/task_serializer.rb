class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :due_date, :project_id, :user_id, :status
  belongs_to :user
  belongs_to :project
end
