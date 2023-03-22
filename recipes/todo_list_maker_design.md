{{PROBLEM}} Class Design Recipe

1. Describe the Problem
#Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.
A)As a user
So that I can focus on tasks to complete
B)I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
#Include the initializer and public methods with all parameters and return values

class Todo
  def initializer
  end

  def store(task) #task is a string
  end

  def list
    #returns list of stored tasks
  end

#will add in part B later

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.
A)
1.
todo = Todo.new
todo.store("walk the dog")
todo.list => ["walk the dog"]

2.
todo = Todo.new
todo.store("Walk the dog")
todo.store("Water the plants")
todo.list => ["Walk the dog, "Water the plants"]

3.
