class User < ApplicationRecord
  has_many :projects
  has_many :tasks, through: :projects
  validates :username, uniqueness: true, presence: true
  after_create :create_demo_projects

  def create_demo_projects
    demo_project = Project.create({title: "Demo Project", status: "Active"})
    task1 = Task.create({ description: "Add a task to this project"})
    task2 = Task.create({ description: "Toggle this task as done"})
    task3 = Task.create({ description: "Click on the project options to see completed tasks"})
    task4 = Task.create({ description: "Uncheck this task to make it active again", status: "Completed"})
    task5 = Task.create({ description: "Click on the top right button to add a new project"})
    task6 = Task.create({ description: "Drag this task to another project"})
    task7 = Task.create({ description: "Double click on this task to edit"})
    task8 = Task.create({ description: "Double click on this project title to edit"})
    task9 = Task.create({ description: "Happy tasking!"})
    demo_project.tasks << task1
    demo_project.tasks << task2
    demo_project.tasks << task3
    demo_project.tasks << task4
    demo_project.tasks << task5
    demo_project.tasks << task6
    demo_project.tasks << task7
    demo_project.tasks << task8
    demo_project.tasks << task9
    self.projects << demo_project
  end

end
