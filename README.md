Takeaway
========

This was the second of our weekend tasks at Makers Academy.  The aim here is to write a takeaway app with the following functionality:

* Dishes should be listed with prices
* Orders should be placed by giving the list of dishes, their quantities and a number that should equal the exact total.
* If the sum is not correct, the method should raise an error
* If the sum is correct, the customer should be sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now. e.g. "Thank you! Your order has been placed and will be delivered before 18:52".
* The texting functionality should be implemented using the Twilio API. 
* A Gemfile should be used to manage the gems
* The Takeaway class should be thoroughly tested and use mocks and/or stubs as necessary so that you do not send texts when your tests are run
* When the Takeaway class is loaded in IRB and an order is placed, the text should actually be sent
* We are using our personal phone numbers for this and do not need to model the customer's mobile phone number

###Logic Of Program
- A customer will first choose a restaurant
- It will then select the dishes
- When finished choosing, the order will be aggregated
- A "fund check" on the consumer will be performed
- The restaurant will be notified of the order
- The customer will be sent a text, guiding them to expect delivery in one hour

###Areas For Extension/Improvement
- A Menu class could be introduced.  This would allow a restaurant to maintain multiple menus improving the potential for extension, consistent with the Open/Closed Principle from the SOLID set of principles.  It would also add a layer between the dishes and the customer/restaurant potentially and could serve as a kind of adapter.
- Bespoke notification towards customer with their own personal phone number, etc.
- A centralised "Member" class could be introduced that holds all the restaurants that are signed up on the system.
- Customer can currently re-enter order with new quantities, rather than supplement their order.  
- Customer cannot currently delete their order.

###New Technologies
- This will allow us to begin to use Ruby Gems.
- In this case, we will use Twilio for text messaging
- The twilio-ruby gem is the one used to access the API
- We use environmental variables to call and store sensitive information
- We use Bundler and a Gemfile for the first time
- Doubles will be used so that texts aren't sent every time tests are run
