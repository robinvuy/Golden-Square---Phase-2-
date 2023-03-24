# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo = []
  end

  def add(todo) # todo is an instance of Todo # Returns nothing
    @todo << todo
  end

  def incomplete # Returns all non-done todos
    return @todo
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

#todo_list = TodoList.new
#p todo_list.add("hi")
#p todo_list.incomplete