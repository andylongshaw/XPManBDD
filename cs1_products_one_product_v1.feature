Feature: Products
	In order to show the customer what we are selling
	As an eCommerce website
	I want to be able to retrieve information about one or more products


@Version1
Scenario: Search for specific product
Given The Product Code "123456" is in the system
# WWL: Complex set of API call parameters difficult to express
And The product expression used is:
  | Criteria		| Operator	| Value |
  | IsMarkedDown	| =		| false	|
  | FreshnessDays	| >=		| 0	|
# WWL: Several things need to be done in the 'When' - not universally accepted
When I search for product "123456" in department "Womens"
And I select product "123456"
Then I should see the following product details:
| size		| 32			|
| price		| 62.50			|
| description	| blah, blah	        |
| colour	| green			|

