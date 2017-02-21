#take in clients name
#take in client's age
#empty hash

design_journal = {}


"Welcome to the Design Journal!"
#take in name (prompt and convert)
puts "what is your name?"
design_journal[:name] = gets.chomp
#take in age (prompt and convert)
puts "what is your age?"
design_journal[:age] = gets.chomp.to_i
#take in number of children (prompt and convert)
puts "how many children to you have?"
design_journal[:children] = gets.chomp.to_i
#take in preferred decor theme (prompt and convert)
puts "how would you describe your favorite decor theme?"
design_journal[:theme] = gets.chomp
#take in boolean (prompt and convert)
puts "have you worked with us before (y/n)?"
return_customer = gets.chomp
if return_customer == "y"
	design_journal[:return_customer] = true
else
	design_journal[:return_customer] = false
end
#take in integer (prompt and convert)
puts "how many bedrooms do you have?"
design_journal[:bedrooms] = gets.chomp.to_i
#take  in string (prompt and convert)
puts "what is your favorite color?"
design_journal[:color] = gets.chomp
#take in boolean (prompt and convert)
puts "have you visited our website, www.fakedesignwebsite.com (y/n)?"
website = gets.chomp
if website == "y"
	design_journal[:website] = true
else
	design_journal[:website] = false
end
#print hash back on screen
p "Here is your Design Journal:"
puts design_journal

#allow for update (prompt and convert)
p "what would you like to change (eg. 'bedrooms', 'none' to skip)?"
keygetter = gets.chomp

if keygetter != "none"
	p "what is the new input for #{keygetter}?"
	new_input = gets.chomp
end

keygetter = keygetter.to_sym

case keygetter
when :none
when :return_customer, :website
	if new_input == "y"
		design_journal[keygetter] = true
	else
		design_journal[keygetter] = false
	end
when :bedrooms, :age, :children
	design_journal[keygetter] = new_input.to_i
else
	design_journal[keygetter] = new_input
end

#print hash back on screen

p "Here is your final Design Journal:"
puts design_journal

#lookup string to symbol .to_symbol?


#exit