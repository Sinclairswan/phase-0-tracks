# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  ## User inputs list items
		# Build a method that takes items into a string.
		# Seperate each item into seperate strings, using split()
		# Iterate through the new array of seperate items and push them into a hash, making them each their own key
   		# set default quantity to 1
  		# print the list to the console [can you use one of your other methods here?]
		# output: Our shopping list

 def list_adder(items)
 	shopping_list = {}
 	items.split(' ').each do |item| 	
 		shopping_list[item] = 1	
 	end
 	shopping_list	
 end

 
# Method to Add an item with a quantity to the list
# input: hash, item we want to add, and quanity to assign
# steps: go into the hash, create a new item, and assign the quanity.
# output: the key we enter is removed from the hash 
def add_quanity (hash, item, quantity)
	hash[item] = quantity
	return hash
end


# Method to remove an item from the list
# input: hash, item we want to remove
# steps: go into the hash, and select the item we wish to remove.
# output: the key we enter is removed from the hash
def remove_item (hash, item)
	hash.delete(item)
	return hash

end

# Method to update the quantity of an item
# input: hash, item, quanity
# steps: go into the hash, locate the item the user enters, and then change the quanity they enter.
# output: we will have a new quanity for a key
def update (hash, item, quanity)
	if hash.include?(item)
		hash[item] = quanity
		return hash
	else false
	end
end



# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and print out the key one by one
# output: Get a list of items and quanity

def print_list (hash)
	hash.each do |key, quanity|
		puts "Item: #{key}, qty: #{quanity}"
	end
end


#our code would look like this (p add_quanity(list_adder('carrots apples pears pizza'), 'grapes', 24))
our_original_list = list_adder('carrots apples pears pizza')
p add_quanity(our_original_list, 'grapes', 24)
p remove_item(our_original_list, 'grapes')
p update(our_original_list, 'apples', 5)
p update(our_original_list, 'broccoli', 5)
p update(our_original_list, 'apples', 2)

print_list(our_original_list)

=begin 
So my biggest concern was that the hash was trapped inside
the list_adder, and we couldnt just dump our method results
in the hash. I feel like there is a better way to do this
rather than calling methods within methods. 
Any feedback / alternate solutions would be amazing
=end



