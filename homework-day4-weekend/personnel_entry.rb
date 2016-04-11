# Create a Ruby program that acts as a employee record tracker. (personnel_system.rb)

# There will be a class called "Employee". With at least these attributes:

# name
# role (or occupation)
# location
# Let's assume our company has multiple locations. For an extra method, create one that transfers the employee to another location.

# The program will allow the user to create a new employee record, view and modify an existing record.

# This program will have a similar structure to the Bank program.

class Employee

	attr_reader :name, :role, :location, :rec_num, :transfer
	@@count = 0

	def initialize(name, role, location)
		@name = name
		@role = role
		@location = location
		@@count += 1
		@rec_num = @@count
	end

	def transfer(new_location)
		@location = new_location
	end

end

@employees = []

def main
	puts "Welcome to ERT, where we track your employees' records..."
	main_menu
end

def main_menu
	puts "Please choose from the following options:"
	puts "========================================="
	puts "1. New Employee Record"
	puts "2. View an Existing Record" #will have transfer record options here
	puts "3. End Session"

	choice = gets.chomp.to_i

	case choice
		when 1
			system"cls"
			create_record
		when 2 
			system"cls"
			authorization
		when 3
			end_session
		else
			system"cls"
			puts "Invalid selection. Please try again."
			main_menu
	end
end

def create_record
	puts "Open a Record"
	puts "=============="
	puts "Please enter the employee's full name: "
	name = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	puts "What is this employee's role?"
	role = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	puts "Where is this employee located?"
	location = gets.chomp.downcase.split.map(&:capitalize).join(' ') 
	new_record = Employee.new(name, role, location)
	@employees.push(new_record)
	puts "Record created succesfully."
	puts "Your record number is: #{new_record.rec_num}"
	main_menu_return
end

def main_menu_return
	puts "Do you want to return to the Main Menu? [Y or N]"
	choice = gets.chomp.upcase

	case choice
		when "Y"
			system"cls"
			main_menu
		when "N"
			end_session
		else
			system"cls"
			puts "Invalid selection. Y or N"
			main_menu_return
	end
end

def authorization
	puts "Record Login"
	puts "============="
	puts "Please provide the employee record name:"
	name = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	puts "What is their record number?"
	num = gets.chomp.to_i
	
	rec_found = false
	@employees.each do |rec|
		if rec.name == name && rec.rec_num == num
			puts "Login Succesful!"
			existing_record_menu(rec)
			rec_found = true
		end
	end

	if rec_found == false
		system"cls"
			puts "No account found with those credentials. Please try again."
			authorization
	end
end

def existing_record_menu(rec)
	puts "Your Employee Record Menu"
	puts "=========================="
	puts "1. Check Employee"
	# puts "2. Make an Edit"
	puts "2. Transfer an Employee"
	puts "3. Return to Main Menu"

	choice = gets.chomp.to_i

	case choice
		when 1
			system"cls"
			check_record(rec) 
		# when 2
		# 	system"cls"
		# 	make_edit(rec)
		when 2
			system"cls"
			transfer_employee(rec)
		when 3
			system"cls"
			main_menu
		else
			system"cls"
			puts "Invalid selection. Please try again."
			existing_record_menu(rec)
	end
end

def check_record(rec)
	puts "Employee record #{rec.rec_num} is #{rec.name}, whose occupation is #{rec.role} located in #{rec.location}."
	# puts "Would you like to edit a record "
	sleep(3)
	existing_record_return(rec)
end

# def make_edit(rec)
# 	puts "Would you like to edit the employee's name, role, or location?"
# 	edit = gets.chomp.downcase

# 	case edit(rec)
# 		when 'name'
# 			puts "Please input the correct employee name:"
# 			edit_name = gets.chomp.downcase.split.map(&:capitalize).join(' ')
# 			rec.name(edit_name)
# 			puts "The employee's name has been edited to #{rec.name}."
# 		when 'role'
# 			edit_role = gets.chomp.downcase.split.map(&:capitalize).join(' ')
# 			rec.role(edit_role)
# 			puts "The employee's role has been edited to #{rec.role}."
# 		when 'location'
# 			transfer_employee(rec)
# 		else
# 			system"cls"
# 			puts "Invalid choice. Please choose again."
# 			make_edit(rec)
# 	end
# 	existing_record_return(rec)
# end

def transfer_employee(rec)
	puts "Where should #{rec.name} be relocated?"
	new_location = gets.chomp.downcase.split.map(&:capitalize).join(' ')
	rec.transfer(new_location)
	puts "The employee has been transfered to #{rec.location}."
	sleep(1)
	existing_record_return(rec)
end

def existing_record_return(rec)
	puts "Return to..."
	puts "============="
	puts "1. Employee Record Menu"
	puts "2. Main Menu"
	puts "3. End Sesson"

	choice = gets.chomp.to_i

	case choice
		when 1
			system"cls"
			existing_record_menu(rec)
		when 2
			system"cls"
			main_menu
		when 3
			end_session
		else
			system"cls"
			puts "Invalid selection. Please try again"
			existing_record_return(rec)
	end
end

def end_session
	system"cls"
	puts "Thanks for using ERT. We appreciate your service and will keep you records safe.
				\nGoodbye."
end

main