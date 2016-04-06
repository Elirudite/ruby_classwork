# Create a program with a hash of countries & capitals - don't worry I'll give it to you:

# Ask the user for the capital of each country, and tell them if they are Correct or Wrong. 
# Also, keep score and give their score at the end of the quiz. 
# Maybe have some smart-alecky comments about their score 

coun_n_caps = {"USA" => "Washington, DC", 
	"Canada"=>"Ottawa", 
	"United Kingdom"=>"London", 
	"France"=>"Paris", 
	"Germany"=>"Berlin", 
	"Egypt"=>"Cairo", 
	"Ghana"=>"Accra", 
	"Kenya"=>"Nairobi", 
	"Somalia"=>"Mogadishu", 
	"Sudan"=>"Khartoum", 
	"Tunisia"=>"Tunis", 
	"Japan"=>"Tokyo", 
	"China"=>"Beijing", 
	"Thailand"=>"Bangkok", 
	"India"=>"New Delhi", 
	"Philippines"=>"Manila", 
	"Australia"=>"Canberra", 
	"Kyrgyzstan"=>"Bishkek"}

	puts "Lets play a game... How many country capitals do you know?! (yes, its case-sensitive)"

coun_n_caps = Hash[coun_n_caps.to_a.shuffle]

score = 0

total = 0

coun_n_caps.each do |coun, caps|
		puts "What is the capital of #{coun}?"
		answer = gets.chomp
		if caps.include? answer
			puts "CORRECT!"
			score += 1
			puts " "
		else
			puts "WRONG! The capital of #{coun} is #{caps}."
			puts " "
		end
		total +=1
end

puts "\r\n You got a score of #{score} out of #{total}!"



	# HAVE TO PUT SOME SNARKY COMMENTS BASED ON PLAYER SCORE HERE
