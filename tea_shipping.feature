Feature: Beautiful Tea Shipping Costs
  * Australian customers pay GST
  * Overseas customers don’t pay GST
  * Australian customers get free shipping for orders $100 and above
  * Overseas customers all pay the same shipping rate regardless of order size

Scenario: Calculate GST status and shipping rate
  Given the customer is from <customer’s country>
  When the customer’s order totals <order total>
  Then the customer <pays GST>
  And they are charged <shipping rate>

Examples:
| customer’s country |pays GST | order total | shipping rate          |
| Australia          |Must     | $99.99      | Standard Domestic      |
| Australia          |Must     | $100.00     | Free                   |
| New Zealand        |Must Not | $99.99      | Standard International |
| New Zealand        |Must Not | $100.00     | Standard International |
| Zimbawbe           |Must Not | $100.00     | Standard International |
