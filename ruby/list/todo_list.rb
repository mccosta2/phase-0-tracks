class TodoList

	def get_items()
		start_list = @start_list
		start_list
	end

	def add_item(new_item)
		@start_list << new_item
	end

	def initialize(list)
		@start_list = list
	end

end
