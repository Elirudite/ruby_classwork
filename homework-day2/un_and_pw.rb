# Create a program that stores Usernames and Passwords in a Hash (you'll create the UNs & PWs).

# Have the user input a UN & PW, first make sure that the UN is in our collection, 
# after which access will be granted if they inputed the matching PW, otherwise: ACCESS DENIED!

hash = {"bobby" => "rayyyy",
				"johny" => "Br4v0",
				"carlos" => "riv_era",
				"jimmy" => "n3utr0n",
				"gandalf" => "Da_Gr3y",
				}

puts "We need your credentials to ensure that you are authorized for this site."
puts "What is your Username?"

inputUsername = gets.chomp.downcase

found_user = false

hash.each do |un, pw|
	if un.include? inputUsername
			puts "Please enter your password #{inputUsername}: "
			inputPassword = gets.chomp
			found_user = true
		if pw.include? inputPassword
			puts "Access Granted!"
			found_user = true
		else
			puts "ACCESS DENIED!"
		end
	else
		puts "You are not authorized to be here!"
	end
end

if !found_user
	puts "You're not supposed to be here!!"
end