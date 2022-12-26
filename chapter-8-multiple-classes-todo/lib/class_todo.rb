class Todo

  def initialize(task)
    @task = task
    @mark_done = false
  end

  def task
    return @task
  end

  def mark_done
    @mark_done = true
  end


  def done?
    return @mark_done
  end
 
end
