# Add a declarative step here for populating the DB with movies.

Given /the following tasks exist/ do |tasks_table|
  tasks_table.hashes.each do |task|
    Task.create!(task)
  end
end

When /^I create the task with title "(.*)", progress "(.*)", people "(.*)", notes "(.*)"/ do |title, progress, people, notes|
    visit path_to("the home page")
    click_link("New Task")
    fill_in("Title", :with => title)
    fill_in("Progress", :with => progress)
    fill_in("People", :with => people)
    fill_in("Notes", :with => notes)
    # When I fill in "Title" with "#{title}"
    # When I fill in "Progress" with "#{progress}"
    # When I fill in "People" with "#{people}"
    # When I fill in "Notes" with "#{notes}"
    click_button("Save")
end


When /^I edit the task "(.*)"/ do |task_name|
    visit edit_task_path(Task.find_by title: task_name)
end

When /^I delete the task "(.*)"/ do |task_name|
    within (".#{task_name}") do
        click_link("Destroy")
    end
end

