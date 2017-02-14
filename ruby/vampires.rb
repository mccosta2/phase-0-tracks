def vampdetector()
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp
	age = age.to_i

	puts "What year were you born?"
	year = gets.chomp
	year = year.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp

	allergies = ""
	until allergies == "done" do
		puts "you have any allergies?"
		allergies = gets.chomp
		if allergies == "sunshine"
			puts "Probably a vampire"
			return
		end
	end

	agecalc = 2017-year
	agecalc2 = 2017-year-1

	case name
	when "Drake Cula"
		puts "Definitely a vampire."
	when "Tu Fang"
		puts "Definitely a vampire."
	else
		if (age == agecalc)||(age == agecalc2)
			if (garlic == "y") || (insurance == "y")
				puts "Probably not a vampire."
			end
			if (garlic == "n") && (insurance == "n")
				puts "Almost certainly a vampire."
			else 
				puts "Probably a vampire."
			end
		else
			puts "Results inconclusive"
		end
	end
end

puts "How many employees are to be processed?"
employees = gets.chomp
employees = employees.to_i	

while employees > 0 do
	vampdetector()
	employees = employees -1
end