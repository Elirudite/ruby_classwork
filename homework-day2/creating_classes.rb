# Practice creating classes!

# Start with just the initialize method and the methods that display attributes.

# Then create some methods that modify the data associated with the Object 
# (i.e., change the value of the attributes).

# If you have some ideas for Objects, great! If not, here's some suggestions:


class Cupcakes
	# cake_type
	# icing_color
	# filling_flavor
	attr_accessor :cake, :icing, :filling, :designs

	def initialize(cake, icing, filling, designs)
		@cake = cake
		@icing = icing
		@filling = filling
		@designs = designs
	end

	# def cool_cakes
	# 	@designs do |pattern|
	# 		pattern = "\\-_-/"
	# 	end
	# end

end

class Pasta

	attr_accessor :type, :flavor, :cheese

	def initialize(type, flavor, cheese)
		@type = type
		@flavor = flavor
		@cheese = cheese
	end

end

class House

	attr_accessor :address, :square_footage, :bedrooms, :bathrooms, :property_sq_footage
	
	def initialize(address, square_footage, bedrooms, bathrooms, property_sq_footage)
	@address = address
	@square_footage = square_footage
	@bedrooms = bedrooms
	@bathrooms = bathrooms
	@property_sq_footage = property_sq_footage
	end

end

class Blog

	attr_accessor :title, :blog_entry, :author

	def initialize(title, entry, author)
		@title = title
		@entry = entry
		@author = author
	end

	def post_created
		"Thank you for posting, #{author}"
	end

end

post1 = Blog.new("title string", "entry string", "author string")

puts post1.title
puts post1.post_created