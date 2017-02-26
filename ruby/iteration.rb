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

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
samp_arr =  [
"a",
"b",
"c",
"d"
]

samp_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four"
}	

p samp_arr
p samp_hash

samp_arr.delete_if  {|item| item <= "b"}
samp_hash.delete_if {|digit, word| digit < 3 }

p samp_arr
p samp_hash


#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
	
samp_arr =  [
"a",
"b",
"c",
"d"
]

samp_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four"
}	

p samp_arr
p samp_hash

p samp_arr.keep_if {|item| item <= "b"}
samp_hash.keep_if {|digit, word| digit < 3 }

p samp_hash


#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!	

samp_arr =  [
"a",
"b",
"c",
"d"
]

samp_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four"
}	

p samp_arr
p samp_hash

p samp_arr.take_while {|item| item <= "b"}
samp_hash.reject! {|digit, word| not (digit < 3) }

p samp_hash

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
samp_arr =  [
"a",
"b",
"c",
"d"
]

samp_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four"
}	

p samp_arr
p samp_hash

p samp_arr.drop_while  {|item| item <= "c"}
samp_hash.reject! {|digit, word|  (digit < 3) }


p samp_hash