
def get_number
	puts "Please give me two numbers..."
	num = gets.chompe 1
end

def zero_check(num)
	if num == 0
		puts "Please mgivee me something larger than 0."
		zero_found = true
	else
		zero_found = false
	end
end

num = get_number
zero_check(num)



