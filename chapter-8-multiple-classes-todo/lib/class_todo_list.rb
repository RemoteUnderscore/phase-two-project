class TodoList

  def initialize
    @tasks = []
    @give_up = give_up
  end

  def add(todo)
    @tasks << todo  
  end

  def incomplete
    return @tasks.select do |task|
      !task.done?
    end
  end

  def complete
    return @tasks.select do |task|
      task.done?
    end
  end

  def give_up
    return @tasks
  end

end