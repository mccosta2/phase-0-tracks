def talker
	puts "blah blah blah beflore block"
	yield ("Tanya")
end

talker { |your_name| puts "hi #{your_name}, blah blah blah, after block!"}