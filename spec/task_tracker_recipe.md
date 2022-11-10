1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if aa text includes the string #TODO

Thanks for viewing - feedback appareciated.


2. Design the Method Signature

```ruby

task_tracker(text) # task_tracker is the method and text is the text to check



3. Create Examples as Tests


task_tracker("") => "No todo found"

task_tracker("Walk the dog") => "No todo found"

task_tracker("#TODO Walk the dog") => "Todo found!"



4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.