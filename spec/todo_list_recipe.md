# Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

(This was hard for me to implement!)

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class TodoList
  def initializer
  #...
  end

  def add_todo(todo)
    list << todo
  end

  def list
  list = []
    return list
  end
end

```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby
# EXAMPLE
# 1
todoadder = TodoAdder.new

# 1
add_todo("") => false

# 2
add("Walk the dog") => "Walk the dog"

# 3
add("Walk the dog")
add("Feed the fish")

=> "Walk the dog", "Feed the fish"

# 4
add("Walk the dog")
add("")
add("Feed the fish")

=> "Walk the dog", "Feed the fish"

# 5

add("Walk the dog")
add("Feed the fish")
complete("Feed the fish")

=> "Walk the dog"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._