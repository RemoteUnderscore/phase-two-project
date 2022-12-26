require 'todo_list'

RSpec.describe TodoList do
  context "Adds todos to a list and returns the list" do
    it "it has an empty list if there are no tasks" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end

    it "returns todo if todo added" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      expect(todo_list.list).to eq ["Walk the dog"]
    end

    it "returns more than one todo if added" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      todo_list.add("Feed the fish")
      expect(todo_list.list).to eq ["Walk the dog", "Feed the fish"]
    end

    it "returns more than one todo if added" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      todo_list.add("Feed the fish")
      todo_list.add("Clean the gerbils' cage")
      expect(todo_list.list).to eq ["Walk the dog", "Feed the fish", "Clean the gerbils' cage"]
    end

    context "when a task is completed" do
    it "removes the task from the list" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      todo_list.add("Feed the fish")
      todo_list.add("Clean the gerbils' cage")
      todo_list.complete("Walk the dog")
      expect(todo_list.list).to eq ["Feed the fish", "Clean the gerbils' cage"]
    end

    context "when a task doesn't exist" do
    it "it fails" do
      todo_list = TodoList.new
      todo_list.add("Walk the dog")
      expect { todo_list.complete("Eat some greens") }.to raise_error "No task."
    end
end
end
end
end