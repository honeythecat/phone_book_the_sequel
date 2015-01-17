class Phone
	attr_reader (:contact_phone)
	
	@@all_numbers = []
	
	define_method(:initialize) do attributes
		@contact_phone = attributes.fetch(:contact_phone)
	end
	
	define_singleton_method(:all) do
		@@all_numbers
	end
	
	define_method(:save) do
		@@all_numbers.push(self)
	end

end