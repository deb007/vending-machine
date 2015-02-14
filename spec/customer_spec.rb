require 'customer'

describe Customer do

	it 'starts off by having an empty bag' do 
		expect(customer.bag).to be_empty
	end

	it 'is initialized with change in his wallet' do 
		expect(customer.wallet).to eq change
	end

	it 'when he correctly orders from the vending machine should have the item and less money' do 
		customer.buy product: "Potato Chips", at: vending_machine, with: {200 => 1, 50 => 1}
		expect(customer.bag).to include chips
		expect(customer.wallet[200]).to eq 0
		expect(customer.wallet[50]).to eq 0
	end

end