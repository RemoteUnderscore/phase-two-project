require 'class_todo_list'

RSpec.describe 'class_todo_list' do
  context "" do
    it "initially it has an empty list of tasks" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
  
  context "" do
    it "marks all todos as done" do
      todo_list = TodoList.new

      expect(todo_list.give_up).to eq []
    end 
  end
end
end
