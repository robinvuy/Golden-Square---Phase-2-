require "todo_2"

RSpec.describe Todo do
  describe "#task" do
    it "returns tasks" do
      todo = Todo.new("Go to gym")
      expect(todo.task).to eq "Go to gym"
    end
  end
  
  describe "#done?" do
    it "fails if task has not been entered" do
      todo = Todo.new()
      expect { todo.done? }.to raise_error "task does not exist"
    end
    
    it "returns true if tasks are done" do
      todo = Todo.new("Go to gym")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
    
    it "returns false if tasks are not done" do
      todo = Todo.new("Go to gym")
      expect(todo.done?).to eq false
    end
  end
end
