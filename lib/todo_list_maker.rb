class Todo
  def initialize
  @task = []
  end

  def store(task)
    @task << task
  end

  def list
    return @task
  end

  def complete(done_task)
   fail "No such task exists!" if @task.include?(done_task) == false
    @task.delete(done_task)
  end
end

