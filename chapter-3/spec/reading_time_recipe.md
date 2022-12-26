1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming
that I can read 200 words a minute.

2. Design the Method Signature



```ruby

def reading_time(text) # text is a string of words
count = text.split(" ").size # count is the amount of words in the text
if count = 0
  return 0
elsif count <= 200
  return 1
elsif count > 200
  return count / 200
end
end

3. Create Examples as Tests

reading_time("")
return 0

reading time("Once upon a time")
return 1

reading time(200 words)
return 1

reading_time(300 words)
return 2

reading_time(400 words)
return 2

reading_time(500 words)
return 3

reaading_time(600 words)
return 3

etc.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.