require('rspec')
require('contact')

describe(Contact) do
	
	describe("#initialize") do
		it("takes a name and phone number for a newly created contact object and returns the name and phone number") do
			test_name = Name.new({:contact_name => "Satan"})
			test_name.save()
			test_phone = Phone.new({:contact_phone => "666-666-6666"})
			test_phone.save()
			expect(test_contact = Contact.new({:name => test_name, :phone => test_phone})).to(eq(test_contact))
		end
	end
			
	describe(Contact) do
		describe(".all") do
			it("is empty at first") do
				test_contact = Contact.new({:name => nil, :phone => nil})
      	expect(Contact.all()).to(eq([]))
    	end
  	end
	end

end
