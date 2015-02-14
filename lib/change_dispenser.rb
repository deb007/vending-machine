module ChangeDispenser

	def render_change
		remainder = (total_of inserted_money)  - desired_product.price
		change = calculate_change_by remainder
		puts "Your change is #{convert_to_rupees change}"
		give change and customer.receive change
	end

end