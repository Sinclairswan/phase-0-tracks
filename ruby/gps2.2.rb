# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a hash
  # Use split.(" ") to create an array of the items
  # Iterate each item into the hash
  # set default quantity to 1
  # Return the hash
# output: hash

def new_list(items, quantity = 1)
  groceries = {}
  items = items.split(" ")
  items.each { |item| groceries[item] = quantity }
  groceries
end


# Method to add an item to a list
# input: list(new_list method), item name, and optional quantity
# steps: Takes groceries, item, and quantity as an argument
        # Adding a new key-value pair to the groceries hash
        # return updated hash
# output: hash

def add_item(list, item, quantity = 1)
  list[item] = quantity
  list
end
list = {}
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)


# Method to remove an item from the list
# input: list, item name
# steps: Removing key-value pair from the groceries hash
  #Returning the hash
# output: Hash

def delete_item(list, item)
  list.delete(item)
  list
end

delete_item(list, "lemonade")




# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Updating default quantity of existing item
  # Return hash
# output: hash

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

update_quantity(list, "ice cream", 1)


# Method to print a list and make it look pretty
# input: list
# steps: Iterate through the list
  # Print each key and each value
# output: String of each key and value

def print_list(list)
  list.each { |item, quantity| puts "#{item}: #{quantity}" }

end

print_list(list)


# What did you learn about pseudocode from working on this challenge?
  #I learned the more detailed the pseudcode the eaiser it is to write the method

# What are the tradeoffs of using arrays and hashes for this challenge?


# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?




