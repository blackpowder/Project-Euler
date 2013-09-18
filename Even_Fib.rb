def sum_fibonnacci_sequence(maximum = 4000000)
	new_item = 0
	fib_number  = [1,2]

	while new_item < maximum do	
		new_item = fib_number[-2] + fib_number[-1]
		fib_number << new_item if new_item < maximum
	end
	
	even_numbers = fib_number.select {|number| number%2 == 0}
	puts even_numbers.inject {|sum, n| sum + n }
end

 sum_fibonnacci_sequence()
