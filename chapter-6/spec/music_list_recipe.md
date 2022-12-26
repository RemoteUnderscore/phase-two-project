# Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


Thanks for viewing. Feedback appreciated!


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class MusicList

def initialize
@tracks = []
end

def add(track)
@tracks << track
end

def delete(track)
@tracks.delete(track)
end

def list
return @tracks
end
end



```
## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

# 1

# returns an empty list if nothing has been added

=> []

# 2

# returns the list if a track is added

music_list.add("Blue Monday")

=> ["Blue Monday"]

# 3

# returns list if more than one track added

music_list.add("Blue Monday")
music_list.add("Ebb and Flow")

=> ["Blue Monday", "Ebb and Flow"]

# 4

# will only add unique tracks, not duplicates

music_list.add("Blue Monday")
music_list.add("Blue Monday")

=> ["Blue Monday"]

# 5

# deletes a track when necessary

music_list.add("Blue Monday")
music_list.add("Ebb and Flow")
music_list.add("Kierto")
music_list.delete("Ebb and Flow")

=> ["Blue Monday", "Kierto"]

# 6

# returns an error if you try to delete something not in the list

music_list.add("Kierto")
music_list.delete("Ebb and Flow")

=> error "Not in the list."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._