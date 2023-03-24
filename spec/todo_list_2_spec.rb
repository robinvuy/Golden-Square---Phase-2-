require "todo_list_2"

RSpec.describe TodoList do
  it "adds and returns all incomplete todos" do
    todo_list = TodoList.new
    todo_list.add("Go to gym")
    expect(todo_list.incomplete).to eq ["Go to gym"]
  end
  
end