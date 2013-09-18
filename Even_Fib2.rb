def sum_fibonnacci_sequence(max = 4_000_000)
	new_item = 0
	fib_numbers = [1, 2]

	while new_item < max
		new_item = fib_numbers[-2] + fib_numbers[-1]
		fib_numbers << new_item if new_item < max
	end

	even_numbers = fib_numbers.select &:even?
	even_numbers.inject {|sum, n| sum + n }
end

puts sum_fibonnacci_sequence