{{PROBLEM}} Multi-Class Planned Design Recipe

1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary.

As a user
So that I can reflect on my experiences
I want to read my past diaries.

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed.

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary.

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in my diary entries.


2. Design the Class System

Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com



┌────────────────────────┐  ┌───────────────────────┐
│ Diary Class            │  │ Diary Entry Class     │
│                        │  │                       │
│ add                    │  │ construct             │
│ list                   │  │ count words           │
│ use reading time       │  │                       │
│                        │  │                       │
│                        │  │                       │
├────────────────────────┤  ├───────────────────────┤
├────────────────────────┤  ├───────────────────────┤
│ Todo List Class        │  │ Todo Entry Class      │
│                        │  │                       │
│ add                    │  │ construct             │
│ list                   │  │ mark                  │
│ mark                   │  │                       │
│                        │  │                       │
│                        │  │                       │
└────────────────────────┘  └───────────────────────┘


    ┌────────────────────────┐
    │ Phone Book Class       │
    │                        │
    │ add from diary entries |
    │                        │
    │ list                   │
    │                        │
    │                        │
    │                        │
    └────────────────────────┘



```ruby

class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def list
    return @entries
  end

  def count_words
    # returns the SUM of words in the contents of all entries
  end

  def reading_time(wpm)
  # returns the amount of time it will take to read an entry given the readers 'words per minute' speed
  end

  



end

class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def word_count
    @contents.split(" ").length
  end
end

class TodoList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def incomplete
    return @tasks
  end

  def complete
    return @tasks.mark_done true
  end
end

class Todo
  def initialize
    @task = task
    @markdone = false
  end

  def task
    return @task
  end

  def mark_done
    mark_done = true
  end

  def done
    return @markdone
  end
end

class PhoneBook
  def initialize
    @phonebook = []
  end
  
  def add(number)
    @phonebook << number
  end

  def list
    return @phonebook
  end

  def search(number)
    # returns the number you search for in @phonebook
  end
end

class PhoneNumber
  def initialize
    @number = number
  end

  def number
    return @number
  end
end


```

3. Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

```ruby

#1 diary entries list is initially empty

#diary = Diary.new
#diary.list => []

#2 a diary entry can be added

#diary = Diary.new
#entry_1 = DiaryEntry.new("day one", "november first")
#diary.add(entry_1)
#diary.list => [entry_1]

#3 multiple diary entries can be added

#diary = Diary.new
#entry_1 = DiaryEntry.new("day one", "november first")
#entry_2 = DiaryEntry.new("day two", "november second")
#diary.add(entry_1)
#diary.add(entry_2)
#diary.list => [entry_1, entry 2]

#4 todo list is initially empty

todo_list = TodoList.new
todo_list.incomplete => []

#5 a task can be added to the todo list

todo_list = TodoList.new
todo_1 = Todo.new("Walk the dog")
todo_list.incomplete => [todo_1]

#6 multiple tasks can be added

todo_list = TodoList.new
todo_1 = Todo.new("Walk the dog")
todo_2 = Todo.new("Clean the car")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.incomplete => [todo_1, todo_2]

#7 the phonebook is initially empty

phonebook = Phonebook.new
phonebook.list => []

#8 a phone number can be added to the phonebook

phonebook = PhoneBook.new
number_1 = Number.new("07777000000")
phonebook.add(number_1)
phonebook.list => [number_1]

#9 multiple numbers can be added to the phonebook

phonebook = PhoneBook.new
number_1 = Number.new("07777000000")
number_2 = Number.new("07777000001")
phonebook.add(number_1)
phonebook.add(number_2)
phonebook.list => [number_1, number_2]

```

4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

```ruby

#1 constructs a diary entry

#diary_entry = DiaryEntry.new("day one", "november first")
#diary_entry.title => "day one"
#diary_entry.contents => "november first"

#2 counts the words in the contents of an entry

#diary_entry = DiaryEntry.new("day one", "november first")
#diary_entry.count_words => 2

#3 constructs a todo task

todo = Todo.new("Walk the dog")
todo.task => "Walk the dog"

#4 marks a todo as done

todo = Todo.new("Walk the dog")
todo.mark_done => true

#5 checks if a todo is done

todo = Todo.new("Walk the dog")
todo.done => "Walk the dog"

#3 creates a phone number
number = Number.new("07777000000")
number => "07777000000"

```

Encode each example as a test. You can add to the above list as you go.



5. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.