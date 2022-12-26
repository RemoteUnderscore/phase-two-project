require 'class_todo'

describe Todo do
  context "creates todos to add to the todo list" do
    it "remains empty if nothing is added" do
      todo = Todo.new('')
      expect(todo.task).to eq ''
    end

    it "creates a task when added" do
      todo = Todo.new("Walk the dog")
      expect(todo.task).to eq "Walk the dog"
    end 
  
    it "checks if a task is done" do
      todo = Todo.new("Walk the dog")
      expect(todo.done?).to eq false
    end

  context "if a task is done" do
    it "marks a task as done" do
      todo = Todo.new("Clean the gerbils")
      todo.mark_done
      expect(todo.done?).to eq true
    end
  end
end
end
