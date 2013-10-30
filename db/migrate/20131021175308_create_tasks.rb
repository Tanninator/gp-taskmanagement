class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :progress
      t.string :people
      t.string :task_location
      t.string :notes

      t.timestamps
    end
  end
end
