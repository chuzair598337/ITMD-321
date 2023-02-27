# Review Questions - Chapter 02

Review Questions covering week-05 chapter 02 questions, part I.  Answers taken from Textbook: `Database Concepts (p. 120). Pearson Education. Kindle Edition` 

## Objectives

* Enumerate the fundamentals of relations and keys
* Present the attributes the three types of constraints
* Demonstrate knowledge of attributes of relational tables
* Demonstrate knowledge of concept of functional dependencies

## Outcomes

At the conclusion of this assignment you will have engaged in explaining and understanding the fundamental concepts of relation tables by explainging keys, constraints, and functional dependencies

### Review Questions

The questions relate to the components of a Relational Database.


* Define the term entity, and give an example of an entity (other than the one from  this chapter)

      Entity is some identifiable thing that user want to track. examples are Account,Product,Person etc
* List the characteristics a table must have to be considered a relation. 
      
      1.  Rows contain data about an entity
      2.  Columns contain data about attributes of the entity
      3.  cells of the table hold a single value
      4.  All entries in a column are of the same kind.
      5.  Each column has a unique name
      6.  Each order of the columns id unimportant.
      7.  The order of the rows is unimportant.
      8.  No two rows may hold identical sets of data values.
* Define the  term domain, and explain the significance of the domain integrity constraint to a relation
  
      * The term Domain means a grouping of data that meets a specifc type defination.
      * In a relation all the values in a column are of the same kind.
      if the second column of the first row of a relation has FirstName, then the second column of every row in the relation has FirstName.
      This is known as Domain integrity constraint.
* Give an example of a relation (other than one from this chapter)

      * Employee(EmployeeID,Name,Department,JobTitle,HireDate,Salary)
      * In this relation, Each row contains data about a specific employee entity, Each column contains data about a specific attribute of the employee entity, Each cell in the table holds a single value for a specific attribute of a specific employee, All entries in each column are of the same data type (e.g. numeric, text, date), Each column has a unique name that identifies the attribute it represents (e.g. EmployeeID, Name), The order of the columns does not affect the meaning or validity of the data in the table, The order of the rows does not affect the meaning or validity of the data in the table and Each row represents a unique employee entity, so no two rows can have the same values for all attributes.
* Give an example of a table that is not a relation (other than one from this chapter)
      
    ### Table: Movie
      Columns:
        * Title: the title of the movie
        * Year: the year the movie was released
        * Director: the name of the movie's director
        * Actors: a comma-separated list of the movie's main actors
    #### This table does not satisfy the characteristics of a relation i.e
        1. All entries in a column are of the same kind.
        2. No two rows may hold identical sets of data values.
* Under what circumstances can an attribute of a relation be of variable length?
  
      An attribute of a relation can be of variable length when the attribute represents a collection or a list of values that can vary in size or number for each entity in the relation
* Explain the use of the terms *file*, *record*, and *field*.  
  
      In traditional data processing, The terms file,reocrd and field are used instead of table,row and column respectively.
* Explain the use of the terms *relation*, *tuple*, and *attribute*.  
      
      The database theoretician sometime use the terms relation,tuple and attribute instead of table,row and column respectively.
* Give an example of a relation with a unique composite key. 
  
      The unique composite key for Order tbale is (orderId,CstomerId,ProductId), which ensures thart each row int the relation represents a unique order item. The OrderID attribute alone is not sufficient because the same customer can place multiple orders, and the same product can be ordered by diferent customers. How ever by combining Orderid,CustomerId and productId, we ensure that each row represents a unique combination of an order,  customer, and a product.
* Explain the term foreign key, and give an example.
  
      A foreign key is an attribute or set of attributes in a relation that refer to the primary key of another relation. It establishes a link  or relationship between two relations,allowing data to be shared and integrates across multiple tables.
  
    For Example :
  
      CUSTOMER(CustomerId,Name,Email),
      ORDER(OrderId,CustomerId,OrderDate,TotalAmount)
    
      In this example, the CustomerID attribute in the Order relation is a foreign key that refers to the primary key (CustomerID) of the Customer relation
* Explain how primary keys and foreign keys are denoted in this book (starting from the light blue coloring) 
  
      The primary keys and foreign keys are denoted underlining the attribute(s).
* Explain three possible interpretations of a null value.
  
      The Three possible interpretations of a null value are

      1. A null value may indicate that the data value is missing or unknown.
      2. A null value may indicate that the data value is not applicable to a particular entity or record.
      3. A null value may indicate that the data value is unspecified or unknown.

* Give an example of a null value (other than one from this chapter), and explain  each of the three possible interpretations for that value.
    
      Consider the relation CUSTOMER(CustomerId,Name,Email). 

      Suppose that we have a customer named "John Smith" with a missing or unknown email address. In this case, the Email attribute for this customer may contain a null value. Here are the three possible interpretations for this null value:

        1. The null value may indicate that the email address for John Smith is missing or unknown.
        2. The null value may indicate that the email address for John Smith is not applicable.
        3. The null value may indicate that the email address for John Smith is unspecified or unknown
* Define the terms functional dependency and determinant using an example not from this book.
  ### Functionl Dependency

      A functional dependency is a relationship between two or more attributes in a database table, where one attribute (or set of attributes) determines the value of another attribute.

  ### Determinant

      A determinant is an attribute (or set of attributes) that determines the value of another attribute in a database table.

  For example
      
      consider EMPLOYEES(EmployeeId,Name,Department,Salary). We can say that the attribute "Salary" is functionally dependent on the attribute "Employee_ID", because if we know the value of "EmployeeId", we can determine the value of "Salary" on the other hand we can say that "EmployeeId" is the determinant for "Salary". This is because the value of "Salary" is determined by the value of "Employee_ID"

    
* In the following equation, name the functional dependency and identify the determinant(s):  `Area = Length * Width` 
      
      In this equation, `Area` is the `functional dependency` and the `determinants` in this functional dependency are the `Length` and `Width` attributes

* Explain the meaning of the following expression:  `A -> (B, C)`  
      
      In the given following expression, the ` B and C` are functional dependent on `A` and `A` determines both `B and C`.

* Given this expression, tell if it is also true that:  `A -> B`  and:  `A -> C`  

      * yes `A -> B` and `A -> C` are both true
      * "A" uniquely determines both the values of "B" and "C".

* Explain the meaning of the following expression:  `(D, E) -> F`  
  
      *  `F` is functionally dependent on `D and E`
      * The Composite`D and E` is the determinent of `F`.

* Given this expression, tell if it is also true that:  `D -> F`  and:  `E -> F` 
  
      With given expression we cannot conclude whether the functional dependencies `D -> F` and `E -> F` are true or not, without additional information.

### Deliverable

Using this Markdown Template -- place your answers under each question where indicated.  In your GitHub repository create a folder named: `week-05` under the `itmd-321` folder. Push this template with the completed answers and push to your remote repo.

Submit to Blackboard the URL to the deliverable in GitHub by **Wednesday Feburary 22nd, 1:40 PM**.
