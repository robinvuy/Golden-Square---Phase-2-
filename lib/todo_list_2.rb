# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo = []
  end

  def add(todo) # todo is an instance of Todo# Returns nothing
    @todo << todo
  end

  def incomplete # Returns all non-done todos
    @todo.reject(&:done?)
  end

  def complete # Returns all complete todos
    @todo.select(&:done?)
  end

  def give_up! # Marks all todos as complete
    @todo.each(&:mark_done!)
  end
end

#todo_list = TodoList.new
#p todo_list.add("hi")
#p todo_list.incomplete