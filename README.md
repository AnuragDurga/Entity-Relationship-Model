# Entity-Relationship-Model
**Introduction to the Entity-Relationship (ER) Model**

The Entity-Relationship (ER) Model is a conceptual framework used to design and 
represent the data structure of a database in terms of entities, relationships, and 
attributes. It is an essential component of database management systems because it 
provides a visual representation of how data is organized, stored, and related to one 
another. This model was introduced by Peter Chen in 1976 and has since become 
one of the most widely used techniques for database design.
In the ER model, data is seen as a collection of entities, which are objects that exist 
independently and have a distinct identity. Relationships define how these entities 
interact with each other, and attributes describe the properties of the entities and
relationships. An ER diagram (ERD) is used to graphically depict the ER model, 
making it easier to understand and communicate the database structure to both 
technical and non-technical stakeholders.

Key Benefits of the ER Model:
• Provides a clear and organized structure for complex databases.
• Facilitates the visualization of the relationships between different entities.
• Supports logical and conceptual database design.
• Enables easy conversion into a relational database model.

**Symbols Used in ER Model**
ER Model is used to model the logical view of the system from a data perspective 
which 
consists of these symbols:
• Rectangles: Rectangles represent Entities in the ER Model.
• Ellipses: Ellipses represent Attributes in the ER Model.
• Diamond: Diamonds represent Relationships among Entities.
• Lines: Lines represent attributes to entities and entity sets with other relationship 
types.
• Double Ellipse: Double Ellipses represent Multi-Valued Attributes.
• Double Rectangle: Double Rectangle represents a Weak Entity.
Types of Relationships in the ER Model
Relationships define how entities are connected to each other. There are three basic 
types of relationships based on the number of instances that can be associated with 
each other:
1. One-to-One Relationship
In a one-to-one relationship, an entity in one set is related to at most one entity in 
another set, and vice versa.
• Example: In a university, each Student has one Student_ID Card, and each 
Student_ID Card is assigned to one Student.
2. One-to-Many Relationship
In a one-to-many relationship, an entity in one set can be associated with multiple 
entities in another set, but each entity in the second set is related to only one entity 
in the first set.
• Example: A Professor can teach multiple Courses, but each Course is taught by 
only one Professor.
3. Many-to-Many Relationship
In a many-to-many relationship, multiple entities in one set can be associated with 
multiple entities in another set.
• Example: A Student can enroll in many Courses, and a Course can have many 
Students enrolled in it.
4. Recursive (Unary) Relationship
A recursive relationship occurs when an entity is related to itself. This relationship 
describes associations among instances of the same entity set.

• Example: In an employee hierarchy, an Employee can supervise other 
Employees. The Supervises relationship relates an employee to another 
employee within the same Employee entity.

**Product Supply Management System ER Model**
This ER (Entity Relationship) Diagram represents the model of the Product Supply 
Management System Entity. The entity-relationship diagram of the Product Supply 
Management System shows all the visual instruments of database tables and the relations 
between Supply, Stocks, Products, Accounts etc. It used structure data and to define the 
relationships between structured data groups of Product Supply Management System 
functionalities

![image](https://github.com/user-attachments/assets/72733ce4-ba54-4f68-baa6-f3ba9b28b264)

‘Order’ Table
Order_ID Order_Date Quantity Product_ID Customer_ID
‘Supplier’ Table
Supplier_ID Supplier_Name Supplier_no Supplier_Location
‘Product1’ Table
Product_ID Product_name Price Quantity
‘Inventory’ Table
Inventory_ID Product_ID Stock_Level Location
‘Customer’ Table
Customer_ID Customer_Name Address Contact_no
‘Manage’ Table
Supplier_ID Product_ID
