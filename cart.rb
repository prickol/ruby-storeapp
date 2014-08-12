class Cart

	attr_reader :items

	include Itemcontainer
	class INS < StandardError; end

	def initialize(owner)
		@items = Array.new
		@owner = owner
	end

	def save_to_file
		File.open("#{@owner}_cart.txt", "w") do |f|
			@items.each do |i| 
				raise INS if i.class == VirtualItem
				f.puts i
			end
		end
	end

	def read_from_file

		#return unless File.exists?("#{@owner}_cart.txt")
		File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
		@items.uniq! { |o| o.name}
	rescue Errno::ENOENT
		File.open("#{@owner}_cart.txt", "w") {}
		puts "File #{@owner}_cart.txt created for you, Mylord!"
	end

end