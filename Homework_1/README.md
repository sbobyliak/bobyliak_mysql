# bobyliak_mysql
We have a database Rollerskating with 5 tables

Rollers (basic info about all people)

Instructors (rollers who are also instructors)

Communities (each city has own community)

Shops (in different cities, each shop has a partner instructor)

Clients (customer orders in each shop)

----------------------------------------------------------
This code helps to find out instructors with whom most successful partnerships can be made. The more clients instructor sent to a shop, the better.

I use CTE (client_count) to count how many clients each shop has. To add it later to the main query

Then I join data from five tables, leaving the most relevant fields

I filter instructors with rating more than average, because their students are satisfied, they will listen to instructor's advice and reccommend the shop to others

I leave the results where shop has more than 0 clients, as other are not informative

The results are sorted by number of clients so the best are the highest. Results are limited to 2 top instructors.

----------------------------------------

In conclusion we see information about top two instructors with high rating who are most successful partners with shops
