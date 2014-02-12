Feature: Free delivery
In order to improve retention of high value customers
As the online product manager
I want to offer free delivery at times to VIP customers

Scenario: UK VIP customer is offered free delivery
  Given the customer is  a VIP
  And they live in the UK
  And their order value is £50
# delivery address surely?
  When they come to select delivery options
  Then they are offered free delivery

Scenario: UK VIP customer is not offered free delivery
  Given the customer is a VIP
  And they live in the UK
  And their order value is £30
  When they come to select delivery options
  Then they are not offered free delivery

Scenario: Non-UK VIP customer is offered voucher in lieu free delivery
  Given the customer is a VIP
  And they do not live in the UK
  And their order value is £50
  When they come to select delivery options
  Then they are not offered free delivery
  And they are offered a voucher for £5 off next purchase

Scenario: UK standard customer is not offered free delivery
  Given the customer is a standard customer
  And they live in the UK
  And their order value is £50
  When they come to select delivery options
  Then they are not offered free delivery
