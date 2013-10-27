class Task < ActiveRecord::Base
  belongs_to :task_session, :class_name => TaskSession
end
