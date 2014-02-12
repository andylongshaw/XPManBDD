Feature: Products
	In order to show the customer what we are selling
	As an eCommerce website
	I want to be able to retrieve information about one or more products


Scenario: Search for specific product
  Given The product "123456" is in the system
  And The Product Expression used is "MidSeason"
   | label     | expression                                               |
   | MidSeason | IsMarkedDown = false;IsListable = true;DaysInStock >= 60 |
   | SeasonChangeOver | IsListable = true;DaysInStock >= 60               |
  When I search for product "123456" in department "Womens"
  And I select product "123456"
  Then I should see the following product details:
   | size | price | description | colour |
   | 32   | 62.50 |	blah, blah  | green  |

