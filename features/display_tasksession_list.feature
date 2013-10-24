Feature: CRUD on task_sessions

  As an administrator I want to be able see a list of task sessions
    so that I can select one to view

Background: task sessions have been added to database

  Given the following task sessions exist:
  | title        | progress | Administrator | Session Date | notes       |
  | Sierra Lodge | 0        | Bryan Mau     | 10/23/2013   | no notes    |
  | Durant Loft  | 1        | Brian Tan     | 10/23/2013   | sink broken |
  | Harbor Bay   | 2        | Albert Luo    | 10/23/2013   | no notes    |

  And I am on the home page

Scenario: display the list of task sessions
  Then I should see "Sierra Lodge"
  Then I should see "Harbor Bay"
  Then I should see "Durant Loft"
  Then I should see "Bryan Mau"
  Then I should see "Brian Tan"
  Then I should see "Albert Luo"
  Then I should see "10/23/2013"
  Then I should see "no notes"
  Then I should see "sink broken"

Scenario: create task tession
  When I press "New Task Session"
  Then I should be on the page with the title: "New Task Session"

Scenario:  edit task session
  When I click on "Sierra Lodge"
  Then I should be on the page with the title: "Sierra Lodge"

Scenario: delete task session
  When I click on "Sierra Lodge"
  Then I should be on the page with the title: "Sierra Lodge"
  When I click on "Delete Task Session"
  Then I should be on the page with the title "Task Sessions"
  Then I should not see "Sierra Lodge"
  Then I should not see "Bryan Mau"
  Then I should see "10/23/2013"
  Then I should see "no notes"
