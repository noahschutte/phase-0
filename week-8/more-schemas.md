## One to One Data Relationship

![One-to-One Data Relationship](https://github.com/noahschutte/phase-0/blob/master/week-8/imgs/One-to-One.JPG)

## Many to Many Relationship

![Many-to-Many Data Relationship](https://github.com/noahschutte/phase-0/blob/master/week-8/imgs/Many-to-Many.JPG)

### What is a one-to-one database?

A one to one database refers to two tables that could have easily been included in a single table. The data of one instance is spread onto two tables for various reasons. Mostly, you can cleanly separate long lists of columns. It can also created faster searches for data on large platforms. 

### When would you use a one-to-one database? (Think generally, not in terms of the example you created).

I would think about using a one to one database when the list of columns has grown to a very large number. Especially when the table includes column data that I rarely access. 

### What is a many-to-many database?

Many to Many databases have entities that can share information. The best way to describe these relationships is through examples. 

A food can have many condiments used on it. But a condiment can be used on many foods. There is no direct relationship between either a food and a condiment. Ketchup can be used on a corn dog, eggs, a hamburger, and french fries. But French fries can also be dipped in ranch dressing or many other condiments.

### When would you use a many-to-many database? (Think generally, not in terms of the example you created).

When I am not certain that the relationship between two items can be shared between another instance. 

### What is confusing about database schemas? What makes sense?

It's difficult to put into words. It's easier to show on a piece of paper. 