Feature: Pricing
# Put table of prices here?

Scenario: Scan a set of items and produce a total at the end
	Given I scan product A
	And I scan product B
	When I ask for a total
	Then the total is 80
	
Scenario: Price independent of scanning order
	Given I scan product B
	And I scan product A
	When I ask for a total
	Then the total is 80

Scenario: Discount applied on 3rd unit of product A
	Given I scan product A
	And I scan product A
	And I scan product A
	When I ask for a total
	Then the total is 130

Scenario: Discount applied on multiples of 3 units of product A
	Given I scan 3 of product A
	And I scan 3 of product A
	When I ask for a total
	Then the total is 260