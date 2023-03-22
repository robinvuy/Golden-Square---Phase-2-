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
end

