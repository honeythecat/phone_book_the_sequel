require('rspec')
require('contact')

describe(Contact) do
	describe(".all") do
		it("is empty at first") do
			test_contact = Contact.new({:contact_name => nil, :contact_phone_number => nil})
      expect(Contact.all()).to(eq([]))
    end
  end
	
# 	describe("#save") do
#  		it("saves new phone number and returns it") do
#  			test_phone_number = Contact.new({:contact_phone_number => "555-555-5555"})
#  			test_phone_number.save()
#  			expect(Phone.all()).to(eq([test_phone_number]))
#      end
# #   end



#describe("#initialize") do
# 		it("takes a name and phone number for a newly created contact object, and returns the contact name and phone number") do
# 			test_contact_name = Contact.new({:contact_name => "Michael"})
# # 			test_contact_name.save()
# 			test_phone_number = Contact.new({:contact_phone_number => "555-555-5555"})
# # 			test_phone_number.save()
# 			expect(test_contact = Contact.new({:contact_name => test_contact_name, 
# 				:contact_phone_number => test_phone_number})).to(eq(test_contact))			
#     end
#   end


end