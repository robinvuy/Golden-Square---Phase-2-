require "todo_list_maker"

RSpec.describe Todo do
  context "Given no tasks" do
    it "returns an empty hash" do
      todo = Todo.new
      expect(todo.list).to eq []
    end
  end

  context "Given a task string" do
    it "stores and returns a list containing one task" do
      todo = Todo.new
      todo.store("Walk the dog")
      expect(todo.list).to eq ["Walk the dog"]
    end
  
    
    it "stores and returns a list containing two tasks" do
      todo = Todo.new
      todo.store("Walk the dog")
      todo.store("Water the plants")
      expect(todo.list).to eq ["Walk the dog", "Water the plants"]
    end
  end

  context "When we complete a task" do
    it "removes task from list" do
      todo = Todo.new
      todo.store("Walk the dog")
      todo.store("Water the plants")
      todo.complete("Walk the dog")
      todo.list => ["Water the plants"]
    end
  end
  
  context "When we try to complete a task that doesnt exist" do
    it "fails" do
      todo = Todo.new
      todo.store("Walk the dog")
      todo.store("Water the plants")
      expect { todo.complete("walk the car") }.to raise_error "No such task exists!"
    end
  end
end


