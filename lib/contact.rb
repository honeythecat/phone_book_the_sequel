class Contact
	attr_reader(:name, :numbers, :id)
	
	@@all_contacts = []
	
	def initialize(attributes)
		@name = attributes[:name]
		@numbers = []
 		@id = @@all_contacts.length + 1
	end
	
	def save
		@@all_contacts.push(self)
	end
	
	def self.all
		@@all_contacts
	end
		
	def self.clear
		@@all_contacts = []
	end
	
	def id
		@id
	end
	
	def self.find(id)
		found_contact = nil
		@@all_contacts.each do |contact|
			if contact.id == id
				found_contact = contact
			end
		end
		found_contact
	end
	
	def add_phone(phone)
		@numbers.push(phone)
	end
end

