class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status
  has_many :tasks
  belongs_to :user
end
