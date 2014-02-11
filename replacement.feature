Feature: customer requests a replacement order
	As a customer
	I want to request a replacement for an order that wasn't delivered
	So that I can receive my errant order

Background:
	Given Susan has previously raised a claim

Scenario Outline: customer requests a replacement
	Given <the customer> has not received his order
	When they request a replacement
	Then <the action is>
	And a lost mail compensation case is opened

	Examples:
	| the customer | the action is                  |
	| John         | a replacement order is created |
	| Susan        | a claim case is opened         |