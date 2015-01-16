require('rspec')
require('contact')

describe(Contact) do
	describe(".all") do
		it("is empty at first") do
			test_contact = Contact.new({:contact_name => nil, :contact_phone_number => nil})
      expect(Contact.all()).to(eq([]))
    end
  end