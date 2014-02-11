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

Scenario: Retrieve list of interests for the specified user
  Given the system knows about the following Users:
  | id | name  | imagePath      |
  | 1  | Asif  | /img/asif.png  |
  And User 1 has the following Interests:
  | id | name     | uri         |
  | 1  | Ardwick  | /interest/1 |
  | 2  | Business | /interest/3 |
  When the client requests GET /user/1/userinterests
  Then the response should contain JSON:
  """
  [
    {
      "id": 1,
      "name": "Ardwick",
      "uri": "/interest/1"
    },
    {
      "id": 2,
      "name": "Business",
      "uri": "/interest/3"
    }
  ]
  """
