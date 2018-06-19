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



User.create([{username: 'Josh'}, {username: 'Julio'}])

Project.create([{title: 'Flatiron Happy Hour'}, {title: 'Coding'}])

Userproject.create([{user_id: 1, project_id: 1}, {user_id: 1, project_id: 2}, {user_id: 2, project_id: 2}])

Task.create([
  {description: 'Buy snacks', due_date: '2018-07-05', priority: 4, user_id: 1, project_id: 1},
  {description: 'Buy booze', due_date: '2018-07-07', priority: 2, user_id: 1, project_id: 1},
  {description: 'Invite everyone', due_date: '2018-07-05', priority: 3, user_id: 2, project_id: 1},
  {description: 'Build the best app', due_date: '2018-09-05', priority: 2, user_id: 2, project_id: 2},
  {description: 'Code more', due_date: '2018-08-05', priority: 1, user_id: 2, project_id: 2},
])
