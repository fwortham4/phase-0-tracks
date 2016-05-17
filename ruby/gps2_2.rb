# Method to create a list
def grocery_list_method(input)
  $grocery_list = {}
  grocery_array = input.split
  grocery_array.each do |item|
  $grocery_list[item] = 1
end
  p $grocery_list
end

grocery_list_method("carrots apples cereal pizza")

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  #1.) split items into array
  #2.) push items to new hash
  # set default quantity
  #3.) print the list to the console [can you use one of your other methods here?]
  #4.)  output: [hash]

# Method to add an item to a list
# input: item name and optional quantity then push to hash

def add(item)
  new_item = item.split
  $grocery_list[new_item[0]] = new_item[1]
  p $grocery_list
end

add("bread 4")

# steps:
  #1.) Take user input to
  #2.) Add to hash as key-value pair
  #3.) print out hash with key-value pairs.
# output: updated grocery_list hash

# Method to remove an item from the list

def remove(item)
  $grocery_list.delete(item)
  p $grocery_list
end

remove("carrots")

# input: item
# steps:
  #1.) Take user input store in variable.
  #2.) Specify key-value pair (by using a If/Else Boolean).
  #3.) Remove key-value pair from hash.
  #4.) print out hash with key-value pairs.
# output: updated grocery_list hash

# Method to update the quantity of an item

def update(item)
   new_item = item.split
   updated_hash = {}
   $grocery_list[new_item[0]] = new_item[1]
   p $grocery_list
end

update("bread 10")

# input: item
# steps:
  #1.) Same as "add" method
# output: updated grocery_list hash

# Method to print a list and make it look pretty

def pretty_list()
  list_string = $grocery_list.to_s
  p list_string
end

pretty_list($grocery_list)

# input: grocery_list hash
# steps:
# output: