# Adding from random arrays - write a program that takes two arrays of random numbers, 
# the length of which is decided by the user, and adds the corresponding items in each array 
# (i.e., the first number in the first array will be added to the first item in the second array). 
# Remember to create methods to keep your code DRY!

def add_arrays(array_one, array_two)
	count = 0
	while count < array_one.length
		puts "#{array_one[count]} + #{array_two[count]} = #{array_one[count] + array_two[count]}"
		count += 1
	end
end

# 	array_one.each_index do |index|
# 		result_array[index] = array_one[index] + array_two[index]
# 		index += 1
# 	end
# end

# def create_arrays
# 	(s_o_arr..e_o_arr).to_a.shuffle.take(l_o_arr)
# end

puts "We are going to make two arrays of random numbers. You can decide the range and length!"

puts "How long do you want your list of numbers?"
l_o_arr = gets.chomp.to_i 

puts "And where should the list of numbers start?"
s_o_arr = gets.chomp.to_i 

puts "Cool, now where should it end?"
e_o_arr = gets.chomp.to_i 

puts "You will have 2 arrays of #{l_o_arr} numbers between #{s_o_arr} and #{e_o_arr}."

array_one = (s_o_arr..e_o_arr).to_a.shuffle.take(l_o_arr)

array_two = (s_o_arr..e_o_arr).to_a.shuffle.take(l_o_arr)

reslut_array = []

index = 0

puts "Here is the first list: "
print array_one

puts " "

puts "Here is the second list: "
print array_two

array_one.each_index do |index|
		result_array[index] = array_one[index] + array_two[index]
		index += 1
	end

puts " "

puts result_array
