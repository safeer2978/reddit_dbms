# Modelling and Implemnenting Reddit Data as a Relational Database.

This is an acadamic project for the course on Relational Database Management Systems RDBMS. We learned about the process of data modelling and implementaiton technqies of RDBMS such as ER diagrams, normalization, plsql etc. Through this project, we apply these concepts that we've learned, to a system similar to that of Reddit.

[A full Detailed Project report can be found here.](https://github.com/safeer2978/reddit_dbms/blob/main/report.pdf)


# We follow the following methodology for reddit.

## Database Design:

1. Listing Functional Requirements of the System.
2. Listing Entities and Relationships
3. Desiging ER diagram
4. Deriving the Schema from ER Diagram
5. Listing Keys
6. Checking for anolomies and functional dependencies.
7. Normalization of Schema

## Implementation:

1. Choose Database and check for Codd's Rules
2. Writing Create Queries with relevent datatypes and Constraints.
3. Creating Dummy Data and Insert queires.
4. Write Example Queeies for Use cases
3. Writing Functions
4. Writing Procedures
5. Wrting Triggers


# ER Diagram

![](https://github.com/safeer2978/reddit_dbms/blob/main/ER_DIAGRAM.png)


# Design Considerations

1. Combining Post and Comment in ‘is a’ relationship as Contribution. 
Post and Comment are related to several common entities. These relations are with 
entities such as User, Vote, Award Transaction, Report; and have the same cardinality as 
well. Besides, they even have several common attributes. Hence we decided to establish 
‘is a’ relationship with a superclass as Contribution and have subclasses as Post and 
Comment. These would hence inherit all relationships and attributes of Contribution. 

2. Award Transaction relating to User and Contribution. 
 For the functionality of awards, there are two users and a post involved. However, 
as the post is already linked to one of the users through a relationship, there is only one 
explicit relationship between User and Award Transaction which is for the user that's 
giving the award. The user that is receiving the award is linked to the Contribution, hence 
we relate the contribution to the Award Transaction. Hence we get rid of a redundant 
relationship between the User and Award Transaction. Instead of two, we include only one. 

3. Vote as a separate entity rather than an attribute of Contribution. 
 For any social networking site, the votes(likes, hearts, whatever you may call it) 
decide the popularity of that post/contribution. Hence, there is a need for these votes to be 
legitimate and be able to be audited. If Vote were an attribute, it would only record the 
count of votes and not relate to the user that casts it, thereby allowing a user to vote multiple 
times the same vote, which is wrong. Since each User is entitled to vote a contribution only 
once, we should be able to trace that vote to the user, and hence maintain a record of the 
same. As we further investigate the Reddit architecture, there’s a dedicated vote 
verification mechanism that would identify fraudulent votes and please the corresponding 
users. This would require Vote to be a separate entity of its own. 

4. Relationships with Comment Entity 
 Our initial consideration for Comment was to relate it to its superclass Contribution. 
This would result in the subclasses Post and Comment inheriting this relationship with 
comment. This approach would have every comment point to either a post or a comment. 
The issues we noticed here were that there is no direct relation with a comment which is a 
reply to another comment and the post. This would cause an issue as if the post is deleted, 
we would have to delete all comments one by one, instead of doing it with a single query; 
and we cannot maintain a count of total comments belonging to a post. Ultimately this may 
be a poor design choice and hence we chose an alternative approach. 
We explicitly define relationships between Post and Comment, and self-relation with 
Comment. This solves the above-mentioned issues. The main difference in doing this 
explicit relation versus the inherited relation is the difference in cardinality. 
