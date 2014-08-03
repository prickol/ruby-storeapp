module Itemcontainer

	def add_item (item)
		@items.push item
	end

	def remove_item
		@item.pop
	end

	def validate
		@items.each { |i| puts 'Item has no price' if i.price.nil? }
	end

	def invalid_delete
		@items.delete_if { |i| i.price.nil? }
	end

end
