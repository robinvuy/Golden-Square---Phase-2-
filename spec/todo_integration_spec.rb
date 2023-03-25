require "todo_list_2"
require "todo_2"

RSpec.describe "integration" do
  it "returns all incomplete tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to gym")
    todo_list.add(todo_1)
    expect(todo_list.incomplete).to eq [todo_1]
  end

  it "adds and returns all completed and incompleted todos" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to gym")
    todo_2 = Todo.new("Go to shop")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_1.mark_done!
    expect(todo_list.complete).to eq [todo_1]
    expect(todo_list.incomplete).to eq [todo_2]
  end

  it "marks all todos as complete" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to gym")
    todo_2 = Todo.new("Go to shop")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.give_up!
    expect(todo_list.complete).to eq [todo_1, todo_2]
  end
end
