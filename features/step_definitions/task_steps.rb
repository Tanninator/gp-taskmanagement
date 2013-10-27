# Add a declarative step here for populating the DB with movies.

Given /the following tasks exist/ do |tasks_table|
  tasks_table.hashes.each do |task|
    Task.create!(task)
  end
end

When /^I edit the task "(.*)"/ do |task_name|
    visit edit_task_path(Task.find_by title: task_name)
end

When /^I delete the task "(.*)"/ do |task_name|
    within (".#{task_name}") do
        click_link("Destroy")
    end
end

