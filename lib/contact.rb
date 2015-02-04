class Contact
	attr_reader(:name, :numbers, :id)
	
	@@all_contacts = []
	
	define_method(:initialize) do |attributes|
		@name = attributes[:name]
		@numbers = []
 		@id = @@all_contacts.length().+(1)
	end
	
	define_method(:save) do
		@@all_contacts.push(self)
	end
	
	define_singleton_method(:all) do
		@@all_contacts
	end
		
	define_singleton_method(:clear) do
		@@all_contacts = []
	end
	
	define_method(:id) do
		@id
	end
	
	define_singleton_method(:find) do |id|
		found_contact = nil
		@@all_contacts.each() do |contact|
			if contact.id().eql?(id)
				found_contact = contact
			end
		end
		found_contact
	end
	
	define_method(:add_phone) do |phone|
		@numbers.push(phone)
	end
end

