Takeaway
========

This was the second of our weekend tasks at Makers Academy.  We were asked to write a Takeaway Ruby App with the following functionality:

* Dishes should be listed with prices
* Orders should be placed by giving the list of dishes, their quantities and a number that should equal the exact total.
* If the sum is not correct, the method should raise an error
* If the sum is correct, the customer should be sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now. e.g. "Thank you! Your order has been placed and will be delivered before 18:52".
* The texting functionality should be implemented using the Twilio API and a Gemfile should be used to manage the gems
* The Takeaway class should be thoroughly tested and use mocks and/or stubs as necessary so that you do not send texts when your tests are run
* When the Takeaway class is loaded in IRB and an order is placed, the text should actually be sent
* Use your personal phone number for this; it is not necessary to model the customer's mobile phone number

###Logic Of My Program
A customer will first choose a restaurant and then select the dishes.  When they have finished choosing, the order will be aggregated and a "fund check" on the consumer will be performed.  The applicable restaurant will then be notified of the details of the order and the customer will be sent a text, guiding them to expect delivery in one hour.  I have chosen to add an 'informer' class as I think it adds a layer and fits with SOLID principles.  e.g. if we wanted to change how a customer or restaurant might be informed of an order in future, this will be where code can be modified without breaking other aspects of the program.

###Feedback From Review
A delivery time error was uncovered in that from 11pm, an expected delivery time could be 25:xx.  This has been fixed.  An environmental variable has also been renamed from MY_MOBILE to CUSTOMER_MOBILE to just ensure that this code is easier to understand.  The dish class has been simplified according to the single responsibility principle.  Dish objects are no longer responsible for checking if they are on a specific restaurant's menu.  The order class has also been slightly simplified.  It is now responsible for calculating the total basket cost, performing the customer affordability check and collating the order information from the customer.  This has been a lesson in "build-what-you-need" and "keep-it-simple-stupid." 

###Ways To Improve / Extend This Project
- The `send_text` method could be refactored; for example, it could take the customer number as an argument and bespoke notifications introduced.  This is beyond the scope of the task requirements that were initially outlined.  The method could be further stripped and a test could be put in place to check that the `create` method is being called.
- Clearly this is a simple app and a Menu class could be introduced that would allow a restaurant to maintain multiple menus improving the potential for extension, consistent with the Open/Closed Principle from the SOLID set of principles.  It would also add a layer between the dishes and the customer/restaurant.
- Customers cannot currently delete orders and their abilities to edit orders are limited.
- The order class is naturally very dependent on the customer.

###New Technologies
- This challenge introduced us to Ruby Gems.
- We used the Twilio Ruby gem for text messaging
- We learned how to use environmental variables to call and store sensitive information
- We used Bundler and a Gemfile for the first time
- Doubles were used so that texts weren't sent every time tests were run