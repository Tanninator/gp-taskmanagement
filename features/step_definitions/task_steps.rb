# Add a declarative step here for populating the DB with movies.

Given /the following tasks exist/ do |tasks_table|
  tasks_table.hashes.each do |task|
  end
  flunk "Unimplemented"
end

Then /^I should be on the page with the title: "([^"]*)"$/ do |title|
  page.should have_css('head title', :text => title)
end
