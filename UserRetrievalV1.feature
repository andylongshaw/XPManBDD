Feature: Retrieve the details on a given user held by the system

In order to display view a user's details
As a user
I want to retrieve details on a specific user

Scenario: Retrieve details about the specified user
  Given the system knows about the following Users:
  | id | name  | imagePath      |
  | 1  | Asif  | /img/asif.png  |
  | 2  | Henry | /img/henry.png |
  When I ask for User 1
  Then the user name should be 'Asif'
  And the user id should be 1

# Issues:
# - story wording is vague re: who is the actor
# - scenario wording is vague for client developer. Need to look in to the step definition to be sure what's happening.
# - unused information (image name)
#
# Who does ths work for?
