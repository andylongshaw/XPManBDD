Feature: customer requests a replacement order
	As a customer
	I want to request a replacement for an order that wasn't delivered
	So that I can receive my errant order

Background:
	Given Susan has previously raised a claim

Scenario: first claim for a replacement order
	Given John has not received his order
	When he requests a replacement
	Then a replacement order is created
	And a lost mail compensation case is opened

Scenario: subsequent claim for a replacement order
	Given Susan has not received her order
	When she requests a replacement
	Then a claim case is opened
	And a lost mail compensation case is opened
