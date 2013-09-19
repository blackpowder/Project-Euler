def sum_square_difference(low = 1, high = 100)
	squares_of_numbers = []
	numbers = []

	(low..high).each do |number|
		
		squares_of_numbers << number * number

		numbers << number
	end

	sum_square_of_numbers = squares_of_numbers.inject {|sum, n| sum + n }

	sum_of_numbers = numbers.inject {|sum, n| sum + n }
	square_of_sum_of_numbers = sum_of_numbers * sum_of_numbers

	square_of_sum_of_numbers - sum_square_of_numbers
end

puts sum_square_difference()


