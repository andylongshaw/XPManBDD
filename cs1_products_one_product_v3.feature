Feature: Products
	In order to show the customer what we are selling
	As an eCommerce website
	I want to be able to retrieve information about one or more products

Scenario: Search for a product using a WebProductCode
  Given A service named ProductServices returns a list of products
  And There is a product with a ProductCode of 123456
  When I call the method SearchProducts with a request containing the ProductCharacteristicList that is created from the expression "ProductCode = 123456"
  Then I should recieve a response containing 1 products
  And The ProductCode = 123456
