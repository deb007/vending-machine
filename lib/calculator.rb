module Calculator

	def total_of amount
		amount.map {|denomination, quantity| denomination * quantity}.inject(:+)
	end

	def convert_to_rupees number
		format("Rs%.2f", total_of(number).to_f/100)
	end

	def calculate_change_by remainder, change = Hash.new(0)
		total_money.each do |denomination, quantity|
			(remainder / denomination).times { change[denomination] += 1 ; remainder -= denomination }
		end
		return change
	end

	def incorrect_amount_given?
		desired_product.price > (total_of inserted_money)
	end

end