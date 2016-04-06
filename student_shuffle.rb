# Write a program that splits the class into teams of 2. 
# If there's an odd number of students the last group should be a group of 3.

students = []

student = ""

puts "Please enter the students in your class. Type 'done' when you're finished."

while student.downcase != "done"

	student = gets.chomp
	students.push(student) if student.downcase != "done"
	
end

students.shuffle!

puts system"cls"
puts "Thank you! Your groups are as follows: "

if students.length % 2 == 0
	count = 0
	while count < students.length
		puts "#{students[count]} & #{students[count+1]}"
		count += 2
	end
elsif students.length == 1
	puts "#{students[0]} is all alone today... :{"
else 
	count = 0
	while count < students.length 
		if count <= students.length - 4
			puts "#{students[count]} & #{students[count+1]}"
			count += 2 
		else
			puts "#{students[count]} & #{students[count+1]} & #{students[count+2]}"
			count += 3
		end
	end
end