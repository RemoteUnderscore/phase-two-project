1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

```ruby

def text_checker(text) # Text is the text to check for punctuation
first_character = "O"

last_character = "."

return true for pass

return false for fail


3. Create Examples as Tests

text_checker("") => false

text_checker("Once upon a time.") => true

text_checker("once upon a time") => false

text_checker("Once upon a time") => false

text_checker("once upon a time.") => false





4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.