# Creating a grocery list

# Method to create a list


def list_creation(str)

 list = {}
 str.split(' ').each { |item| list[item] = 1 }

  list
end

string_list = "carrots apples cereal pizza steak"


p list_creation(string_list)
grocery = list_creation(string_list)

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  #create a list
  #turn list into array of items
  #feed into hash to be able to give quantity

  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def adding_item(list,item,quantity = 1)
# if quantity == nil
# quantity = 1
# end
 list[item] = quantity
 list
end
p adding_item(grocery, 'Potatoes', 3)
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: # add an item to list by .push to string_list
# output: reprint


def remove_item(list,item)

  list.delete(item)
  list
end

p remove_item(grocery, 'carrots')
# Method to remove an item from the list
# input:string
# steps: #use .delete to remove item from hash
# output:reprint

def updating_item(list,item,quantity)

  adding_item(list,item, quantity)

end
p updating_item(grocery,'cereal', 20)

# Method to update the quantity of an item
# input: string and integer
# steps:identify the key associated with hash
  # and then replace value 
# output: Reprint hash

def printing_list(list)

  list.each do |item, quantity|
  puts "You need #{quantity} #{item}"
  end
end


printing_list(grocery)
# Method to print a list and make it look pretty
# input: hash
# steps: loop through each key value pair

# output: printed version of hash
