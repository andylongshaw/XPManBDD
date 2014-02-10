Feature: customer requests a replacement order
	As a customer
	I want to request a replacement for an order that wasn't delivered
	So that I can receive my errant order

Scenario: first claim for a replacement order
	Given this is my first claim
	When I request a replacement
	Then a replacement order is created
	And a lost mail compensation case is opened

Scenario: subsequent claim for a replacement order
	Given this is not my first claim
	When I request a replacement
	Then a claim case is opened
	And a lost mail compensation case is opened
