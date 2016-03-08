### Release 3 ##
1. select * from states;
2. select * from regions;
3. select state_name, population from states;
4. select state_name, population 
   from states 
   order by population desc;
5. select state_name 
   from states 
   where region_id = 7;
6. select state_name, population_density 
   from states 
   where population_density > 50 
   order by population_density asc;
7. select state_name 
   from states 
   where population 
   between 1000000 and 1500000;
8. select state_name, region_id 
   from states 
   order by region_id asc;
9. select region_name 
   from regions 
   where region_name like "%Central%";
10. select region_name, state_name
    from regions, states
    on regions.id = states.region_id
    order by region_id asc;


![Clueless Wardrobe](https://github.com/noahschutte/phase-0/blob/master/week-8/database-intro/Clueless_wardrobe.PNG)

### What are databases for?

Storing and accessing data.

### What is a one-to-many relationship?

An example of a one to many relationship is as simple as a first name. Bob and Bob are both unique individuals, but they share the same name. In fact, many people can share the same first name. Therefore, "Bob" is not an ideal way to refer to this instance in the database. Instead every Bob entry will have a unique SSN, account number, or driver's license number. Those would be more appropriate identifiers. 

### What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique identifier for an entity. The value of the primary key cannot be duplicated in a table and it cannot contain NULL. Each table can also only have one primary key. 

A foreign key points to a primary key in another table. A foreign key should also be a duplicate in a table. 

### How can you select information out of a SQL database? What are some general guidelines for that?

There are many statements used to extract information out of a database. But selecting is accomplished by using the "select" and "from" commands to identify what information you are interested in requesting. Additional commands help narrow the scope of information that you would like to view. 