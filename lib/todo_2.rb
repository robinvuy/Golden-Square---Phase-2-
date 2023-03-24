class Todo
  def initialize(task) # task is a string
    @task = task
    @done = []
  end

  def task
    return @task
  end

  def mark_done! # Marks the todo as done # Returns nothing
    @done << @task
  end

  def done? # Returns true if the task is done # Otherwise, false
    fail "task does not exist" if @done.include?(task) == false
    if @done.include?(@task)
      return true
    else
      return false    
    end
  end
end

#todo = Todo.new("hi")
#p todo.task


