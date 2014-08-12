class Users

attr_reader :role, :name

	def initialize(options={})
		@role = options[:role]
		@name = options[:name]
	end


end



admin1 = Users.new ({role: 'admin', name: 'Boris'})
admin2 = Users.new ({role: 'admin', name: 'Anna'})
puts admin1.name
puts admin2.role