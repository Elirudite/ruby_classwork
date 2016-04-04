# Dog Says Cat Says: ask user to enter 'dog' or 'cat', program prints animal's sound

puts "Enter 'dog' or 'cat':"

choice = gets.chomp.downcase

# if choice == "dog"
# 	puts "RUFF!RUFF!"
# elsif choice == "cat"
# 	puts "MEOOOWWWWWW!!!!!!!!"
# elsif choice == "monkey"
# 	puts "Oohooh, AAH AAH!"
# elsif choice == "dolphin"
# 	puts "Clickityclickitycliiiick"
# elsif choice == "horse"
# 	puts 'Neeeeeiiiiggh!!'
# elsif choice == "cow"
# 	puts "moooooo"
# elsif choice == "bird"
# 	puts "chirpitychirpchirp!"
# elsif choice == "human"
# 	puts "Snark!"
# else
# 	puts "A;SLFKJAL;KSJFLSKJ Says the mystery animal... :D"
# end

case choice 
	when "dog"
		puts "RuffRuff"
	when "cat"
		puts "MEOOOWWWWWW"
	when "human"
		puts "Snark"
	when "monkey"
		puts "Oohooh, AAH AAH!"
	when "dolphin"
		puts "Clickityclickitycliiiick"
	when "horse"
		puts 'Neeeeeiiiiggh!!'
	when "cow"
		puts "moooooo"
	when "bird"
		puts "chirpitychirpchirp!"
end