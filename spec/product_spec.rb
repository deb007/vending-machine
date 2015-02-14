require 'product'

describe Product do 

	it 'is initialized with a name and a price' do 
		product = Product.new("Potato Chips", 250)
		expect(product.name).to eq "Potato Chips"
		expect(product.price).to eq 250
	end

end