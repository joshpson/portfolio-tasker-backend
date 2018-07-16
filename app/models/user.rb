class User < ApplicationRecord
  has_many :projects
  has_many :tasks, through: :projects
  validates :username, uniqueness: true, presence: true
  after_create :create_demo_projects

  def create_demo_projects
    demo_project = Project.create({title: "Demo Project"})
    self.projects <<  demo_project
  end

end
