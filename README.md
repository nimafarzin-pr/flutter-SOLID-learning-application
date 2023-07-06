# solid_base_application

## Getting Started

![Project!](solid-overview.png)

# This project is a simple application for better understanding of how to use SOLID principles in flutter projects.

 SOLID is an acronym for the first five object-oriented design (OOD) principles by Robert C. Martin (also known as Uncle Bob) 
 These principles establish practices that lend to developing software with considerations for maintaining and extending as the project grows. Adopting these practices can also contribute to avoiding code smells, refactoring code, and Agile or Adaptive software development. 
 SOLID stands for:
 - S - Single-responsibility Principle 
 - O - Open-closed Principle 
 - L - Liskov Substitution Principle 
 - I - Interface Segregation Principle 
 - D - Dependency Inversion Principle 

 ## Single-responsibility Principle

 ![Project!](/assets/single-responsibility-principle.png)
 Single-responsibility Principle (SRP) :
  class should have one and only one reason to change, meaning that a class should have only one job. 


 ## Open-Closed Principle

 ![Project!](/assets/open-closed.png)
 Open-closed Principle (OCP):
  Objects or entities should be open for extension but closed for modification. 
 
 ## Liskov Substitution Principle 

 ![Project!](/assets/Liskov-Substitution-Principle.jpg) 
 Liskov Substitution Principle (LSP):
  Objects of a superclass should be replaceable with objects of its subclasses without breaking the application. In other words, what we want is to have the objects of our subclasses behaving the same way as the objects of our superclass 
 
 ## Interface segregation principle (ISP) 

 ![Project!](/assets/interface-segregation-2.png)
 ![Project!](/assets/interface-segregation.png) 
 Interface segregation principle (ISP):
  No code should be forced to depend on method it does not use. ISP splits interfaces that are very large into smaller and more specific ones so that clients will only have to know about the methods that are of interest to them. Such shrunken interfaces are also called role interfaces ISP is intended to keep a system decoupled and thus easier to refactor, change, and redeploy. 
 
 ## Dependency Inversion Principle 

 ![Project!](/assets/Dependency-Inversion-Principle.png)
 ![Project!](/assets/dependency-inversion.png) 
 Dependency inversion principle:
  Entities must depend on abstractions, not on concretions. It states that the high-level module must not depend on the low-level module, but they should depend on abstractions.