class Todo

  def initialize(task)
    @task = task
    @mark_done = false
  end

  def task
    return @task
  end

  def mark_done
    p puts "here"
    @mark_done = true
    p puts "here"
  end


  def done?
    return true
  end
 
end
