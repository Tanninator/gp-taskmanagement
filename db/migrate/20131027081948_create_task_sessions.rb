class CreateTaskSessions < ActiveRecord::Migration
  def change
    create_table :task_sessions do |t|
      t.string :title
      t.integer :progress
      t.string :admin

      t.timestamps
    end
  end
end
