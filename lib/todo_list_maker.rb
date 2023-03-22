class Todo
  def initialize
  @task = []
  end

  def store(task)
    @task << task
  end

  def complete(done_task)
   fail "No such task exists!" unless @task.include?(done_task) 
    @task.delete(done_task)
  end
  
  def list
    return @task
  end  
end

#todo = Todo.new
#puts todo.store("cooling off")
#puts todo.store("warming up")
#todo.complete("cooling off")
#p todo.list
