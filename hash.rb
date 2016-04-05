# my_hash = { "Name" => "Elijah",
# 						"Age" => 21
# 						"Hometown" => "Riverdale"
# 						"Favorite Food" => "Pasta" }

# my_hash.each do |k, v|
# 	case k
# 	when "Name"
# 		puts "My name is #{v}."
# 	when "Age"
# 		puts "I am #{v} years young."
# 	when "Hometown"
# 		puts "I hail from #{v}."
# 	when "Favorite Food"
# 		puts "I love eating #{v}!"
# 	end
# end

cars = {"Tesla" => ["Model S", "Model X", "Model 3", "Model Y"],
				"Honda" => ["Accord", "Civic", "CRV", "Pilot"],
				"Ferrari" => ["488", "F12", "La Ferrari"]}
puts "What model car do you drive?"
usercar = gets.chomp.downcase.capetalize

found_car = false

cars.each do |k, v|
	if v.include? usercar
		puts "Oh! Thats a #{k}, right?"
		found_car = true
	end
end

if !found_car #means if found_car == false (<<if this is true, do the below)
	puts "Uh,... I dont know what type of car that is."
end
