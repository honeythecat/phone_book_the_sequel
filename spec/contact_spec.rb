require 'rspec'
require 'contact'

describe Contact do
	
	describe '.all' do
		it 'is empty at first' do
			expect(Contact.all()).to eq([])
		end
	end
end
# 			test_contact = Name.create({ :contact_name => "Satan" })
# 			test_phone = Phone.create({ :contact_phone => "666-666-6666" })
# 			test_
# # 			test_contact = Contact.create({ :contact_name, :contact_phone })
# 			expect(test_contact = Contact.({:name => test_name, :phone => test_phone})).to(eq(test_contact))
# 		end
# 	end
			
# # 	describe(Contact) do
# # 		describe(".all") do
# # 			it("is empty at first") do
# # 				test_contact = Contact.new({:name => nil, :phone => nil})
# #       	expect(Contact.all()).to(eq([]))
# #     	end
# #   	end
# # 	end

# end
