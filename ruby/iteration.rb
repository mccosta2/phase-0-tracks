def talker
	puts "blah blah blah beflore block"
	yield ("Tanya")
end

talker { |your_name| puts "hi #{your_name}, blah blah blah, after block!"}

dog_types = [
"German Shepard",
"Dalmation",
"Husky",
"Hot"
]

fruit_qualities = {
	"banana" => "long",
	"orange" => "round",
	"lemon" => "sour",
	"dragonfruit" => "mysterious"
}	

dog_types.each do |breed|
	puts "My favorite type of dog is #{breed}"
end

fruit_qualities.each do |fruit, description|
	puts "a #{fruit} is #{description}"
end

puts dog_types

dog_types.map do |dog|
	dog.upcase
end

puts dog_types

dog_types.map! do |dog|
	dog.upcase
end

puts dog_types

