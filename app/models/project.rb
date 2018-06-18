class Project < ApplicationRecord
  has_many :tasks
  has_many :userprojects
  has_many :users, through: :userprojects
end
