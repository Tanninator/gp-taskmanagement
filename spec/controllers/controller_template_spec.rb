require 'spec_helper'

describe ControllerTemplate do
  before (:each) do
    include ControllerTemplate

    @task_name = "Task"
    @session_name = "TaskSession"
    @task_var_name = "task"
    @session_var_name = "task_session"

    @class_name = "class"
    @class_var_name = "class"
    @empty_name = ""
  end
  it "can convert camel case into snake case" do
    var_name = ControllerTemplate.get_instance_variable_name(@task_name)
    @task_var_name.should == var_name
    var_name = ControllerTemplate.get_instance_variable_name(@session_name)
    @session_var_name.should == var_name
  end
  it "can convert camel case into snake case for names with no caps" do
    var_name = ControllerTemplate.get_instance_variable_name(@class_name)
    @class_var_name.should == var_name
  end
  it "can handle sad path of an empty string and return an empty string" do
    var_name = ControllerTemplate.get_instance_variable_name(@empty_name)
    @empty_name.should == var_name
  end
  it "can handle sad path of an nil string and return an empty string" do
    var_name = ControllerTemplate.get_instance_variable_name(nil)
    @empty_name.should == var_name
  end
end
