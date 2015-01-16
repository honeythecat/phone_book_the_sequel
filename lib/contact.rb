class Contact
	attr_reader(:contact_name, :contact_phone_number)

  @@all_contacts = []

  define_method(:initialize) do |attributes|
		@contact_name = attributes.fetch(:contact_name)
		@contact_phone_number = attributes.fetch(:contact_phone_number)
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end

# 	define_singleton_method(:search) do |search_name|
#     found_album = nil
#     @@all_contacts.each() do |test_cd|
# 			if test_cd.name.album_name == search_word
#         return found_album = test_cd.album
#       end
#     end
#     found_album
#   end
end