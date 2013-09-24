def numbers_serie
	File.open("problem8.txt", "r") do |file|
		file = file.read
		@numbers_file = file.strip.split('')			
	end
	largest_product_in_serie
end

def largest_product_in_serie

	n = 0
	product_of_five_numbers = []

	until n == 999 do 
	
		one = @numbers_file[0 + n].to_i
		two = @numbers_file[1 + n].to_i
		three = @numbers_file[2 + n].to_i
		four = @numbers_file[3 + n].to_i
		five = @numbers_file[4 + n].to_i

		n += 1

		product_of_five = one * two * three * four * five

		product_of_five_numbers << product_of_five		
	end
		product_of_five_numbers.max
end 
	


puts numbers_serie


	





