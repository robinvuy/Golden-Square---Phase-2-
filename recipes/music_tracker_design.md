{{PROBLEM}} Class Design Recipe

1. Describe the Problem
#Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
#Include the initializer and public methods with all parameters and return values

class MusicTracker
  
  def initialize
    #...
  end

  def add(song) #song: string representing music track to be added to list
    #return nothing
  end

  def list
    #displays list of added music tracks
  end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

1.
playlist = MusicTracker.new
playlist.add
playlist.list => []

2.
playlist = MusicTracker.new
playlist.add("Killing in the name of")
playlist.list => ["Killing in the name of"]

3.
playlist = MusicTracker.new
playlist.add("Killing in the name of")
playist.add("In the air tonight")
playlist.list => ["Killing in the name of", "In the air tonight"]

#4.
playlist = MusicTracker.new
playlist.add("Killing in the name of")
playist.add("In the air tonight")
playlist.list => ["Killing in the name of", "In the air tonight"]

#5.
todo = Todo.new
todo.store("Walk the dog")
todo.store("Water the plants")
todo.complete("walk the car")
todo.list => # fails "No such task exists!"

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

