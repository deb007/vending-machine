module ProductDispenser

	def dispense_product
		customer.bag << desired_product
		products.delete desired_product
	end

end