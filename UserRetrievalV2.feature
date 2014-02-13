Feature: Retrieve the details on a given user held by the system

In order to display them to the current user
As a web UI developer
I want to retrieve details on a specific user

Scenario: Retrieve details about the specified user
  Given the system knows about the following Users:
  | id | name  | imagePath      |
  | 1  | Asif  | /img/asif.png  |
  | 2  | Henry | /img/henry.png |
  When the client requests GET /user/1
  Then the response should contain JSON:
  """
  [
    {
      "id": 1,
      "name": "Asif",
      "imagePath": "/img/asif.png"
    }
  ]
  """
