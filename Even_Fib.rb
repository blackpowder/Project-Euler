class Even_fib

	def initialize
		new_item = 0
		@fib_number  = [1,2]

		while new_item < 4000000 do	
			new_item = @fib_number[-2] + @fib_number[-1]
			@fib_number << new_item if new_item < 4000000
		end
	end

	def answer
		even_numbers = @fib_number.select {|number| number%2 == 0}
		answer = even_numbers.inject {|sum, n| sum + n }
		puts answer
	end
end

even_fib = Even_fib.new
even_fib.answer