class Vehicle

	attr_accessor :make, :model, :year, :price, :color 

	def  initialize(make, model, year, price, color)
		@make = make
		@model = model
		@year = year
		@price = price
		@color = color
	end

	def price_change(amount)
		@price += amount
	end

	# def make
	# 	@make
	# end

	# def model
	# 	@model
	# end

	# def year
	# 	@year
	# end

	# def price
	# 	@price
	# end

	# def color
	# 	@color
	# end

end

car = Vehicle.new("Tesla", "Model 3", 2017, 35000, "Black" )

puts "I want a #{car.color} #{car.year} #{car.make} #{car.model}. And I wont pay more than $#{car.price}!"


