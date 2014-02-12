## Specification

Context is an online flower shop. VIP ustomers get free delivery within the UK on orders over £50. VIP customers outside the UK get a gift voucher for an order over £50. 

### Original captured examples

* Mark is a VIP customer from the UK. He puts a £50 flower arrangement in his cart and goes to checkout. At checkout he is offered free delivery.
* Mark puts a £30 flower arrangement in his cart and goes to checkout. At checkout he is only offered regular delivery.
* Lucy is a VIP customer from Ireland. She puts a £50 flower arrangenent in her cart and goes to checkout but she is offered only regular delivery since she is from outside the UK. We do not offer free delivery outside the UK. Instead she is allocated a gift voucher.
* Tom is not a VIP customer. He puts a £50 flower arrangement in his cart and goes to checkout. Oh checkout he is offered only regular delivery. 


### Summary table

User Type   | Country | Order Value | Offer free delivery | Allocate gift voucher
------------|---------|-------------|-----------------|------------
VIP         | UK      | 50          | Yes        | No 
VIP         | UK      | 30          | Yes        | No 
VIP         | Ireland | 50          | No         | Yes
Regular     | UK      | 50          | No         | No

(Heavily borrowed from Gojko Adzic's Bridging the Communication Gap) 

Sample [feature file](online_flower_delivery.feature)
