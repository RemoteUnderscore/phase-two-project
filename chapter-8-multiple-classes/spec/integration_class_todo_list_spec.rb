require 'class_todo_list'
require 'class_todo'


  

RSpec.describe 'TodoList' do
  context "" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_1 = Todo.new("task_1")
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq [todo_1]
    end 


    it "adds several todos to the list" do 
      todo_list = TodoList.new
      todo_1 = Todo.new("task_1")
      todo_2 = Todo.new("task_2")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo_1, todo_2]
    end 

    it "has an initially empty todo list" do 
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end 

    
    it "returns a list of completed tasks" do
      
    end


end
end