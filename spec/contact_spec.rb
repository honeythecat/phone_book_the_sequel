require 'rspec'
require 'contact'
require 'phone'

describe Contact do
	before() do
		Contact.clear
	end	
		
	describe '.all' do
		it 'is empty at first' do
			expect(Contact.all()).to eq([])
		end
	end
	
	describe '#save' do
		it 'adds a new contact to an array of contacts' do
			test_contact = Contact.new({ name: "Satan" })
			test_contact.save
			expect(Contact.all()).to eq([test_contact])
		end
	end
	
	describe '.clear' do
		it 'empties out all of the saved contacts' do
			Contact.new({ name: "Bunny" }).save
			Contact.clear
			expect(Contact.all()).to eq([])
		end
	end
	
	describe '#id' do
		it 'returns the id of a contact' do
			test_contact = Contact.new({ name: "Bunny" })
			expect(test_contact.id()).to eq 1
		end
	end
	
	describe '.find' do
		it 'returns a contact by its id number' do
			test_contact1 = Contact.new({ name: "Satan" })
			test_contact1.save
			test_contact2 = Contact.new({ name: "Bunny" })
			test_contact2.save
			expect(Contact.find(test_contact1.id())).to eq(test_contact1)
		end
	end
	
	describe '#add_phone' do
		it 'adds a new phone number to contact' do
			test_contact = Contact.new({ name: "Satan" })
			test_phone = Phone.new({ type: "cell", number: "1111111111" })
			test_contact.add_phone(test_phone)
			expect(test_contact.numbers()).to eq([test_phone])
		end
	end
			
end
