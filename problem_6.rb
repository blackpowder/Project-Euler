def sum_square_difference(low = 1, high = 100)
	squares_of_numbers = []
	numbers = []

	difference = 0

	(low..high).each do |number|
		squares_of_number = number * number
		squares_of_numbers << squares_of_number
		sum_square_of_numbers = squares_of_numbers.inject {|sum, n| sum + n }

		numbers << number
		sum_of_numbers = numbers.inject {|sum, n| sum + n }
		square_of_sum_of_numbers = sum_of_numbers * sum_of_numbers
		difference = square_of_sum_of_numbers - sum_square_of_numbers
	
	end
	
	puts difference
end

sum_square_difference()


