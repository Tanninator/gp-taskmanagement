class TaskSession < ActiveRecord::Base
  has_many :tasks, :class_name => Task
end
