class Contact
	attr_reader(:name, :phone)
	
	#Old old way
# 	define_method(:initialize) do |name, phone|
# 		@name = name
# 		@description = description
# 	end
# end
	
	define_method(:initialize) do |attributes|
		@name = attributes.fetch(:name)
		@phone = attributes.fetch(:phone)
	end
	
	def self.all
		[]
	end
end
#   define_method(:save) do
#     @@all_contacts.push(self)
#   end
	
# 	define_singleton_method(:search) do |searched_name|
# 		found_contact = nil
# 		@@all_contacts.each() do |test_contact|
# 			if test_contact.name.contact_name == searched_name
# 				return found_contact = test_contact.phone
# 			end
# 		end
# 		found_contact
# 	end
# end
