# Create a method for converting weight from pounds to kilos.

def lbs_to_kg(weight)

	kilos = weight * 0.454

end

puts "So how much do you weigh (lbs)."
pounds = gets.chomp.to_i

puts "You weigh, #{lbs_to_kg(pounds)} in kilograms!"


