require "todo_list_2"
require "todo_2"

RSpec.describe "integration" do
  it "returns all incomplete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to gym")
    todo_list.add(todo_1)
    expect(todo_list.incomplete).to eq [todo_1]
  end
end
