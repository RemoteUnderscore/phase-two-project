class TodoList
  def initialize
    @tasks = []
  end

  def add(todo)
    @tasks << todo
  end

  def complete(todo)
    fail "No task." unless @tasks.include? todo
    @tasks.delete(todo)
  end


  def list
    return @tasks
  end
end
















   
  
  
  
  
  
  
  
  
  #def intitialize
 #@tasks = []
 
  #end

  #def add(todo)
   
   # if todo == ""
    #  return []
    #else
     # @tasks << todo
    

      # list.push(todo)
    
   

    #end
      # list.push(todo) 
      # return list.to_string()




  #end
  #def list
   # list = @tasks.split(" ")
    #return list
  #end
#end