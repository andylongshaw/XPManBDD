## Specification

Context is an online flower shop. VIP ustomers get free delivery within the UK on orders over £50. VIP customers outside the UK get a gift voucher for an order over £50. 

### Original captured examples

* Mark is a VIP customer. He puts a £50 flower arrangement in his cart and goes to checkout. At checkout he is offered free delivery since he is from the UK.
* Mark puts a £30 flower arrangement in his cart and goes to checkout. At checkout he is only offered regular delivery.


### Summary table

User Type   | Country | Order Value | Offer free delivery | Send gift voucher
------------|---------|-------------|-----------------|------------
VIP         | UK      | 50          | Yes        | No 
VIP         | UK      | 30          | Yes        | No 
VIP         | Ireland | 50          | No         | Yes
Regular     | UK      | 50          | No         | No

(Heavily borrowed from Gojko Adzic's Bridging the Communication Gap) 
