require 'rspec'
require 'phone'

describe(Phone) do
	before() do
		Phone.clear()
	end
	
	describe '.all' do
		it 'is empty at first' do
			expect(Phone.all()).to(eq([]))
		end
	end
	
	describe '#save' do
		it 'adds a new number and phone type to an array of phones' do
			test_phone = Phone.new({ :type => "cell", :number => "6666666666"})
			test_phone.save()
			expect(Phone.all()).to eq([test_phone])
		end
	end
	
	describe '.clear' do
		it 'empties out all of the saved phones' do
			Phone.new({ :type => "cell", :number => "6666666666"})
			Phone.clear()
			expect(Phone.all()).to eq([])
		end
	end
	
	describe '#id' do
		it 'returns the id of a phone entry' do
			test_phone = Phone.new({ :type => "home", :number => "6666666666"})
			expect(test_phone.id()).to eq(1)
		end
	end

	describe '#number' do
		it 'returns the phone number' do
			test_phone = Phone.new({ :type => "cell", :number => "6666666666"})
			test_phone.save()
			expect(test_phone.number()).to eq("6666666666")
		end
	end	

end