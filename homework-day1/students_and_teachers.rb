# Write a program that has two arrays, one of student names and one of teacher names.

# Ask the user for their name, and greet them according to their role 
# (if they're a teacher, it says one thing, if they're a student, it says something else):

student_names = []
teacher_names = []

puts "Hello! Whats your name?"

name = gets.chomp.capitalize

puts "Nice to meet you, #{name}. Are you a 'teacher' or 'student'?"

role = gets.chomp.downcase

if role == "teacher"
	puts "And what is your preferred title?"
	title = gets.chomp.capitalize
	teacher_names = teacher_names.push(name)
	puts "Please go ahead and set up your lesson plan for the day, #{title} #{name}."
elsif role == "student"
	student_names = student_names.push(name)
	puts "Well I hope you studied! We have a pop quiz today."
else 
	puts "You're a #{role}? Hmmmm, I don't think you belong here #{name}..."
end

#for a specific list of pre-determined names

=begin
students = %w(Katie Will Elijah Vicki Ryan Trisha Kristian Alex Brian Kenan)

teachers = %w(Aaron Zapata Mandy Richard)

name = gets.chomp.downcase.capitalize

if students.include? name 
	puts "Student specific text"
elsif teachers.include? name
	puts "teacher specific text"
else 
	puts "Who are you?"
=end