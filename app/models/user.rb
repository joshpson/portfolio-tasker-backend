class User < ApplicationRecord
  has_many :projects
  has_many :tasks, through: :projects
  validates :username, uniqueness: true, presence: true
end
