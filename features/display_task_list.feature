Feature: CRUD on tasks

  As an administrator I want to quickly see what tasks are to be done
    and to be able to easily create and modify tasks

Background: tasks have been added to database

  Given the following tasks exist:
  | title                   | progress | people | notes |
  | bathroom                 | 0      | Brian, Albert  | no notes |
  | couch          | 1      | Jonathan, Daniel  | no notes |
  | living room   | 2      | Bryan, Steven | no notes |

  And  I am on the home page

Scenario: display the list of tasks
  Then I should see "bathroom"
  Then I should see "couch"
  Then I should see "living room"
  Then I should see "Brian"
  Then I should see "Bryan"

Scenario: create task
  When I press "New Task"
  Then I should be on the page with the title: "New Task"

Scenario:  edit task
  When I click on "bathroom"
  Then I should be on the page with the title: "Edit Task"
  When I fill in "title" with "bathroom2"
  When I fill in "progress" with "1"
  When I fill in "people" with "Towel"
  When I press "Done"
  Then I should be on the page with the title "Tasks"
  Then I should see "bathroom2"
  Then I should see "Towel"

Scenario: delete task
  When I click on "bathroom"
  Then I should be on the page with the title: "Edit Task"
  When I click on "Delete Task"
  Then I should be on the page with the title "Tasks"
  Then I should not see "bathroom"
  Then I should not see "Brian"
  Then I should not see Albert"
