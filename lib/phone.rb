class Phone
	attr_reader(:type, :number, :id)
	
	@@all_phones = []
	
	def initialize(attributes)
		@type = attributes[:type]
		@number = attributes[:number]
		@id = @@all_phones.length + 1
	end
	
	def save
		@@all_phones.push(self)
	end
	
	def self.all 
		@@all_phones
	end
	
	def self.clear
		@@all_phones = []
	end
	
	def type
		@type
	end
	
	def self.find(identification)
		found_phone = nil
		@@all_phones.each do |phone|
			if phone.id == identification.to_i
				found_phone = phone
			end
		end
		found_phone
	end
end
