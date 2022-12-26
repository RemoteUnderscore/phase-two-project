require 'class_todo_list'
require 'class_todo'

RSpec.describe 'TodoList' do
  context "todo list stores todos" do
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

    it "returns an empty list if no completed tasks" do
      todo_list = TodoList.new
      expect(todo_list.complete).to eq []
    end
     
    context "" do
    it "returns a list of completed todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("task_1")
      todo_2 = Todo.new("task_2")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done
      expect(todo_list.complete).to eq [todo_1]
      expect(todo_list.incomplete).to eq [todo_2]
    end

    it "marks multiple tasks as done" do
      todo_list = TodoList.new
      todo_1 = Todo.new("task_1")
      todo_2 = Todo.new("task_2")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done
      todo_2.mark_done
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end

    it "marks all tasks as done if you give up" do
      todo_list = TodoList.new
      todo_1 = Todo.new("task_1")
      todo_2 = Todo.new("task_2")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done
      expect(todo_list.give_up).to eq [todo_1, todo_2]
      end
    end
  end
end

