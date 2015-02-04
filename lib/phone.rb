class Phone
	attr_reader(:type, :number, :id)
	
	@@all_phones = []
	
	define_method(:initialize) do |attributes|
		@type = :type
		@number = :number
		@id = @@all_phones.length().+(1)
	end
	
	define_method(:save) do
		@@all_phones.push(self)
	end
	
	define_singleton_method(:all) do
		@@all_phones
	end
	
	define_singleton_method(:clear) do
		@@all_phones = []
	end

	define_method(:id) do
		@id
	end
	
	define_singleton_method(:find) do |identification|
		found_phone = nil
		@@all_phones.each() do |phone|
			if phone.id().eq?(identification.to_i())
				found_phone = phone
			end
		end
		found_phone
	end
end
