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
end


