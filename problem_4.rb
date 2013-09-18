def largest_palindrome_product(low = 100, high = 999)
	palindromes = []

	(low..high).each do |digit1|
		(low..high).each do |digit2| 
			result = digit1 * digit2
			palindromes << result if result.to_s == result.to_s.reverse	
		end
	end
	palindromes.max
end

puts largest_palindrome_product