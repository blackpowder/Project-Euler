class Multiple

	def start
		answer = 0
		(1...1000).each do |n|
   		  if n % 3 == 0 or n % 5 == 0
   		 	answer += n 
   		  end
   		end
   		puts "#{answer}"
	end
end

multiple = Multiple.new
multiple.start