require "todo_2"

RSpec.describe Todo do
  it "returns tasks" do
    todo = Todo.new("Go to gym")
    expect(todo.task).to eq "Go to gym"
  end
  




end
