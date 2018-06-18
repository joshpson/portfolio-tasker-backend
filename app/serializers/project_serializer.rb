class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status
  has_many :tasks
  has_many :users, through: :userprojects
end
