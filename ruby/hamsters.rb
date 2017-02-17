#ask for hamster;s name
puts "What is the hamster's name?"
name = gets.chomp

#ask for volume level
puts "How loud is the hamster? (1-10)"
volume = gets.chomp.to_i



#ask for fur color
puts "Enter a fur color"
fur_color = gets.chomp


#ask for adoption candidacy
puts "Is hamster a good candidate for adoption? (y/n)"
adoption_candidate = gets.chomp
if adoption_candidate == "y"
	adoption_candidate = true
else
	adoption_candidate = false
end

#ask for est age
	#convert blanks to nil
puts "What is the hamster's age?"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_i
end

#p name, volume, fur_color, adoption_candidate, age
puts "Your hamster's name: #{name}"
puts "Your hamster's loudness: #{volume}"
puts "Your hamster's fur color: #{fur_color}"
if adoption_candidate
 	puts "Your hamster is a good candidate for adoption"
else
 	puts "Your hamster is not a good candidate for adoption"
end
puts "Your hamster's age: #{age}"