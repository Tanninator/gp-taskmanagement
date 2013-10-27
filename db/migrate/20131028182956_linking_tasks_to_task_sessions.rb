class LinkingTasksToTaskSessions < ActiveRecord::Migration
  def change
    add_column :tasks, :task_session_id, :integer
  end
end
