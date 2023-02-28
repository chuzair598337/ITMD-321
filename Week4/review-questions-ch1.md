# Review Questions - Chapter 01

Review Questions covering week-04 chapter 01 questions.  Answers taken from Textbook and Introduction to Databases Slide presentation.

## Objectives

* Enumerate the fundamentals of the Relational Database Model
* Present the attributes of a Relational Database
* Demonstrate knowledge of the structure of a Relational Table
* Demonstrate knowledge of the history of SQL and the Realational Model

## Outcomes

At the conclusion of this assignment you will have demonstrated a fundamental knowledge of the Relational Database Model and the attributes it presents.

### Review Questions

The questions relate to the components of a Relational Database.

* Using the Relational Model how do we store data?
  * In the relational Model, data is stored in tables consisting of rows and columns.
* Each Table has one ________  to describe the focus of that table.
  * Title
* Tables have ____________ between them to establish connections between the data
  * Relationship
* T/F All data has relationships of some kind
  * F
* Each table is made up of related data fields in a row, called a ____________ (another name for a row)
  * Record
* What is the name of the database we are using in class?
  * MySQL
* When was it released (hint see intro slide -- "the boring decade")?
  * May 23, 1995
* What is the name for the vertical columns in a Table?  
  * Attributes or fields
* Each field in a record, in a Relational Database, has a type or data type. What is the purpose of having a typed field?
  * Having typed fields in a Relational Database serves several important purposes like Data integrity,Storage optimization,Query performance,Application development etc
* T/F Tables have metadata?
  * T
* From introduction Slides, databases are the backend of what kind of systems?
  * Transactions
  * Records
  * Personal Data
  * Health Data
  * Environmental Data
  * Military
  * Government Data
* Who gets credit for creating the Relational Model (circa 1970) and which company did he work for?
  * The relational Model was created by Dr. Edgar F. Codd who was a British computer scientist who worked for IBM Research in san Jose, California.
* What is the name of the language we use to retrieve data from a Relational Database?  (3 letter acronym)
  * SQL
* What does the 3 letter acronym stand for? (Slide #23)
  * Structured query language
* What does it mean that a Database is self-describing? (P 18 textbook)
  * Self-Describing means that a description of the structure of the database is contained within the database self.Because this is so,the content of a database can always be determined just by looking inside the database itself.
* What is database metadata? (P 19 textbook)
  * Data about the structure of a database are called metadata. Examples of metadata are the names of tables, the names of columns and the tables to which they belong,properties of tables and columns.
* Name at least 3 other Relation Database Management Systems (RDBMS) software other than MySQL noted in the Slide presentation and or textbook
  * 1) Oracle Corporation's MYSQL
  * 2) Oracle Corporation's Oracle Database
  * 3) IBM's DB2
  * 4) Microsoft SQL Server
* Using the Relational Model, what modification actions can we take on relational data?  (Page 11 textbook)
  * Three basic Modfication actions are possible which are insert,update and delete.
* Using the Art Course Database we imported to our MySQL database (Monday in class demo) - when we issued the command: `SELECT * FROM CUSTOMER;` in the MySQL Workbench - in the results there was a field named: `CustomerNumber`.  From page 14 in the text, what is the purpose of this field?
  * The column `CustomerNumber` assigns unique identifying number to each row of Customer Table. This is important because some customers might have the same name.

### Deliverable

Using this Markdown Template -- place your answers under each question where indicated.  In your GitHub repository create a folder named: `week-04` under the `itmd-321` folder. Push this template with the completed answers and push to your remote repo.

Submit to Blackboard the URL to the deliverable in GitHub by **Wednesday Feburary 8th, 1:40 PM**.
