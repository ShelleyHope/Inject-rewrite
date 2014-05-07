class	Array

	def my_inject(acc=nil)

		if acc == nil
			acc = self[0]
			self[1..-1].each do |n| 
				acc = yield(acc, n)
			end

		else
			self[0..-1].each do |n|
				acc = yield(acc, n)
			end
		end
		
		acc
	
	end
end

