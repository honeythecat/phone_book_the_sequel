require('rspec')
require('phone')

describe(Phone) do
  describe(".all") do
    it("is empty at first") do
			test_phone = Phone.new({:phone_number => nil})
			expect(Phone.all()).to(eq([]))
    end
  end
  
	describe("#save") do
		it("saves new contact phone and returns it") do
			test_phone = Phone.new({:contact_phone => "666-666-6666"})
			test_phone.save()
			expect(Phone.all()).to(eq([test_phone]))
    end
  end

end