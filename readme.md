Restaurant.r - the Friendly Restaurant Order/POS All-in-One
============

Restaurant.r is a Ruby on Rails app that helps run restaurants. It's mobile-friendly, flexible, customizable, and perfect for small- to medium-sized restaurants.

Logging In
---
![Splash Mobile](app/assets/images/IMG_0342.jpg)
![Splash Desktop](app/assets/images/Screen Shot 2015-12-22 at 9.11.35 AM.png)

Logging in for the first time is simple. The username and password are both the term *admin*. Either of these screens will greet you:

![Login Mobile](app/assets/images/IMG_0343.jpg)
![Login Desktop](app/assets/images/Screen Shot 2015-12-22 at 9.11.47 AM.png)

Recommended use for this software is for servers to be on mobile and for managers and chefs to be on desktop/tablet. The site will function normally for any configuration, but for obvious reasons servers will want to use a small and discreet device such as a mobile touchscreen internet device, while the floor manager and the chef will be in a more stationary position. Adding/editing employees, tables, and menu items is easier to do on desktop as well.


Adding/Editing
--
Managers are able to quickly add employees, menu items, and physical tables in the restaurant. For ease of use, we suggest that such administration is done on a desktop or a tablet.

![Create Employee](app/assets/images/Screen Shot 2015-12-22 at 8.56.17 AM.png)
Creating employees is fairly simple and obvious--add a username, password, email, and cell phone number for any employee. This information will only be viewable to other managers with the exception of passwords. At this point, also be sure to put in the proper permissions level. It would be disastrous to have a server as a chef or even worse, a manager. It is not possible to delete a server after they have created an order, which is why it is important to take care to create a user peroperly the first time.

![Employee Roster](app/assets/images/Screen Shot 2015-12-22 at 8.56.37 AM.png)
The employee roster view. Edits can be made here. It is best only to change the email or phone.

![Create Menu Item](app/assets/images/Screen Shot 2015-12-22 at 8.56.24 AM.png)
Adding menu items is even simpler. Prices can be added only in whole numbers. It is not necessary to indicate an allergen to create a menu item.

![View Menu Items](app/assets/images/Screen Shot 2015-12-22 at 8.56.43 AM.png)
View menu items. Once a menu item has been part of a check, it cannot be deleted.

![Create Table](app/assets/images/Screen Shot 2015-12-22 at 8.56.30 AM.png)
Add a table for each table in your restaurant using any combination of letters and integers. If there is a bar, it is advisable to create each seat as its own table.

![View Tables](app/assets/images/Screen Shot 2015-12-22 at 3.09.44 PM.png)


User Story
----

![User Creates Tables](app/assets/images/IMG_0348.jpg)
It's a busy Friday night and new server Troy just got a table of 3 in his section. He enters the number of guests and the table number to create a new party.

![User Creates New Check](app/assets/images/IMG_0349.jpg)
Troy hits edit, and is able to now see the table, the check, and the order.

![User Creates Order](app/assets/images/IMG_0345.jpg)
Troy creates the order simply by tapping on the items needed and then hits Update Party.

![User Creates Check](app/assets/images/IMG_0346.jpg)
Troy also is able to view a preview of the check, plus tax and suggested tips. Troy can also cash out a check from here by hitting Update Party.

![User Creates Kitchen Order](app/assets/images/IMG_0353.jpg)
Troy has now created an order that will bounce to the cook, Chad.

![Kitchen Queue](app/assets/images/IMG_0355.jpg)
Chad sees that Troy's latest order has come through on his mobile device. It looks like each was sent in 2 minutes ago.

![Boss View](app/assets/images/Screen Shot 2015-12-22 at 8.55.52 AM.png)
Meanwhile, the manager, Sandra, can see that Troy has four open checks and one order that came in about five minutes ago. The yellow of the check items lets her know the time when they came in.

![Queue Updates to Orange](app/assets/images/Screen Shot 2015-12-22 at 9.01.13 AM.png)
Sandra sees that the orders have now been waiting for over 10 minutes based on the orange color of the items. Also, three other tables have been waiting for even longer based on the red! She pings Chad in the kitchen to find out what's up.

![Kitchen Queue](app/assets/images/Screen Shot 2015-12-22 at 9.00.34 AM.png)
Chad comes back to the kitchen to push out some pending orders. Notice the similarity in view to the mobile version. He simply needs to Update Line Item so that the order drops off his queue.

![Paid Check](app/assets/images/Screen Shot 2015-12-22 at 9.12.41 AM.png)
Troy's A1 table has paid out, so his check updates to green. They waited over 15 minutes for their entrees, so Sandra will have to speak to Chad about that later.


Technologies Used
--
*Front-End*: Skeleton framework, jQuery for modal effects
*Back-End*: Ruby on Rails, PostgreSQL

ERD
--
This project used five tables, four of which are pictured in the ERD. The table not depicted is an intermediary called Line_Item between Entree and Party.
![ERD](app/assets/images/IMG_0357.jpg)
