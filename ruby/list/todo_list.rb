class TodoList
	
	def initialize(list)
		@start_list = list
	end

	def get_items()
		start_list = @start_list
		start_list
	end

	def add_item(new_item)
		@start_list << new_item
	end

	def delete_item(to_delete)
		@start_list.delete(to_delete)
	end

	def get_item(index)
		@start_list[index]
	end


end
