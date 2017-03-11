# Make a shopping list for me and my wife, which is technically making someone else's life better as well as my own

#note sure if I'll want fake data or not so I'll add faker and sqlite3
require 'faker'
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("shoppinglist.db")
db.results_as_hash = true

#Shopping list will be forever ongoing so this will only ever create a table once really
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS groceries(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    store VARCHAR(255)
  )
SQL

# create a the table (if it's not there already)
db.execute(create_table_cmd)

# add a test item
#db.execute("INSERT INTO groceries (item, quantity) VALUES ('Bananas', 1)")
#added it and it worked and manually deleted


# Can users create data? Retrieve it? Manipulate it?

def adding_item(item, quantity = 1, store = "Costco")

  db.execute("INSERT INTO groceries (item, quantity, store) VALUES (?, ?, ?)", [item, quantity, store])

end

puts "Hi Amelia, welcome to your digital grocery list!"

Puts "Please let me know what you'd like to do: 'add', 'view', 'update' or 'done':"
# explore ORM by retrieving data

action = gets.chomp

while action != 'done' do
	if action == 'add'
		puts "what would you like to add? (quantity <optional>, item (no spaces), 'from' store <optional>)"
		puts "ex: '12 bananas' or '2%_milk from costco' or '2 organic_bell_peppers from Marianos'":
		new_item = gets.chomp.slice('')
		#do some stuff here to figure out what new item is 

		#do some stuff to add item 		adding_item
	elsif action == view
		puts "what would you like to add? (quantity <optional>, item (no spaces), 'from' store <optional>)"
		puts "ex: '12 bananas' or '2%_milk from costco' or '2 organic_bell_peppers from Marianos'":
		new_item = gets.chomp.slice('')
	elsif action == 'update'
		puts "what item would you like to change? ..."
		#add example items from actual list above
		update_item = gets.chomp
		
		new_item = gets.chomp.slice('')
	else 
		break
	end
		

end


groceries = db.execute("SELECT * FROM groceries")
# kittens.each do |kitten|
puts groceries
# end

