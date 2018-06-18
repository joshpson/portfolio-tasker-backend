class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :project_id
      t.date :due_date
      t.integer :priority
      t.string :status

      t.timestamps
    end
  end
end
