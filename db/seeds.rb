# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    # t.integer "user_id"
    # t.integer "project_id"
    # t.date "due_date"
    # t.integer "priority"
    # t.string "status"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string "description"



User.create([{username: 'Julio'}, {username: 'Josh'}])

Project.create([{title: 'Urgent'}, {title: 'Coding'}, {title: ' Jobs'}])

Userproject.create([{user_id: 1, project_id: 1}, {user_id: 2, project_id: 2}])

Task.create([
  {description: 'a new task', due_date: '2019-05-05', priority: 4, user_id: 1, project_id: 1}, 
  {description: 'run errands', due_date: '2019-07-07', priority: 2, user_id: 1, project_id: 2},
  {description: 'buy groceries', due_date: '2019-06-05', priority: 3, user_id: 1, project_id: 3},
  {description: 'wash car', due_date: '2019-05-05', priority: 2, user_id: 2, project_id: 1},
  {description: 'other task', due_date: '2019-08-05', priority: 1, user_id: 2, project_id: 2},
])
