Feature: Free delivery
In order to improve retention of high value customers
As the online product manager
I want to offer free delivery at times to VIP customers

Scenario: VIP customer is offered free delivery in UK
  Given the customer is  a VIP
  And their order value is £50
# delivery address surely?
  And they live in the UK
  When they come to select delivery options
  Then they are offered free delivery

