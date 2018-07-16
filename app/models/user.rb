class User < ApplicationRecord
  has_many :projects
  has_many :tasks, through: :projects
  validates :username, uniqueness: true, presence: true
  after_create :create_demo_projects

  def create_demo_projects
    demo_project = Project.create({title: "Demo Project", status: "Active"})
    task1 = Task.create({ description: "Add a task to this project"})
    task2 = Task.create({ description: "Toggle this task as done"})
    task3 = Task.create({ description: "Click on the top right options to see completed tasks"})
    task4 = Task.create({ description: "Uncheck this task to make it active again",  status: "Completed"})
    task5 = Task.create({ description: "Click on the top left button to add a new project"})
    task6 = Task.create({ description:  "Drag this task to another project"})
    task7 = Task.create({ description: "Double click on this task to edit"})
    self.projects << task1
    self.projects << task2
    self.projects << task3
    self.projects << task4
    self.projects << task5
    self.projects << task6
    self.projects << task7
  end

end
