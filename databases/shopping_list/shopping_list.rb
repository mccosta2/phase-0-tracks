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

def adding_item(db, item, quantity, store)

  db.execute("INSERT INTO groceries (item, quantity, store) VALUES (?, ?, ?)", [item, quantity, store])

end

def delete(db, item)

  db.execute("DELETE FROM groceries where item = ?", [item])

end

def update(db, item, quantity)

  db.execute("UPDATE groceries set quantity = ? where item = ?", [quantity, item])

end
#handle string parsing later
def add_parse(db, splicedarray)
	#defaults
	quantity = 1
	store = 'Costco'
	item = ''
	#determine if there is a quanity, if so remove it and move on
	if splicedarray.first.to_i != 0
		quantity = splicedarray.first.to_i
		splicedarray = splicedarray.drop(1)
	end
	#determine if there is a store then remove
	if splicedarray.index('from') != nil
		index = splicedarray.index('from')
		store = splicedarray[index+1..-1].join(' ')
		item =  splicedarray[0..index-1].join(' ')
	else
		item = splicedarray.join(' ')	
	end

adding_item(db, item, quantity, store)

end

puts "Hi Amelia, welcome to your digital grocery list!"

puts "Please let me know what you'd like to do: 'add', 'view', 'update' or 'done':"
action = gets.chomp

while action != 'done' do
	if action == 'add'
		puts "what would you like to add? (quantity <optional>, item, 'from' store <optional>)"
		puts "ex: '12 bananas' or 'organic milk from costco' or '2 green bell peppers from Marianos'"
		new_item = gets.chomp.split(' ')

		add_parse(db, new_item)
		
		#do some stuff to add item 		adding_item
	elsif action == 'view'
		#for now just test then clean
		groceries = db.execute("SELECT * FROM groceries")
		puts groceries
	elsif action == 'update'
		puts "what item would you like to change? ..."
		#add example items from actual list above
		update_item = gets.chomp
		puts "either type 'delete' or enter new quantity"
		#maybe later add ability to change store
		update_action = gets.chomp
		if update_action == 'delete'
			delete(db, update_item)
		else
			update(db, update_item, update_action)
		end

	end
	
	puts "Please let me know what you'd like to do next: 'add', 'view', 'update' or 'done':"
	action = gets.chomp	

end


# groceries = db.execute("SELECT * FROM groceries")
# puts groceries

