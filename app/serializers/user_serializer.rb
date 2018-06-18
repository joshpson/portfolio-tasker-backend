class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :tasks
  has_many :projects, through: :userprojects
end
