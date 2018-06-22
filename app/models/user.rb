class User < ApplicationRecord
  has_many :tasks
  has_many :userprojects
  has_many :projects, through: :userprojects
  validates :username, uniqueness: true, presence: true
end
