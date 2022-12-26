class TodoList

  def initialize
    @tasks = []
    @completed = []
    
  end

  def add(todo)
    if todo == todo.mark_done!
      @completed << todo
    else
      @tasks << todo
    end
  end

  def incomplete
    return @tasks
  end
 
  def complete
    return @completed
  end

  def give_up!

  end
end