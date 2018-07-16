class User < ApplicationRecord
  has_many :projects
  has_many :tasks, through: :projects
  validates :username, uniqueness: true, presence: true
  after_initialize :reset_demo

  def reset_demo
    if self.username === "demo"
      self.projects.clear
      demo_project = Project.create({title: "Demo Project", user: self})
      task1 = Task.create({description: "Add a task to this project"})
      demo_project.tasks << task1
    end
  end

end
