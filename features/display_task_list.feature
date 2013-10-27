Feature: CRUD on tasks

  As an administrator I want  the home page quickly see what tasks are to be done
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
  When I create the task with title "clean", progress "1337", people "Robert", notes "good job"
  And I go to the home page
  Then I should see "clean"
  Then I should see "1337"
  Then I should see "Robert"
  Then I should see "good job"

Scenario:  edit task
  When I edit the task "bathroom"
  And I fill in "Title" with "bathroom2"
  And I fill in "Progress" with "1"
  And I fill in "Notes" with "Towel"
  And I press "Save"
  And I follow "Back"
  Then I should see "bathroom2"
  Then I should see "Towel"

Scenario: delete task
  When I delete the task "bathroom"
  Then I should not see "bathroom"
  Then I should not see "Brian"
  Then I should not see "Albert"
