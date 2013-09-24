def largest_product_in_serie

	product_of_five_numbers = []
	read_file
	(0..999).each do |n| 
		product_of_five = 1
		(0..4).each do |offset|
			product_of_five = product_of_five * @numbers_file[n + offset].to_i
		end
		product_of_five_numbers << product_of_five		
	end
	product_of_five_numbers.max
end 

def read_file
	File.open("problem8.txt", "r") do |file|
		file = file.read
		@numbers_file = file.strip.split('')
	end
end

puts largest_product_in_serie