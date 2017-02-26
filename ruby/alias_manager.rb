#get the name
puts "whats your name?"
name = gets.chomp.downcase

#Swapping the first and last name.
#split the first and last name into array
name = name.split(" ")
#swap first and last name, assume only two word names

name.reverse!

#convert to array of characters
name = name.join(" ").chars

name.map! do |letter|
case letter
when 'a' 
	'e'
when 'e' 
	'i'
when 'i' 
	'o'
when 'o' 
	'u'
when 'u'
	 'a'
when 'z'
	'b'
when 'd','h','n','t'
	letter.next.next
when ' '
	' '
else
	letter.next
end	
end

name = name.join.split(" ")

name.map! do |word|  
	word.capitalize
end
p name 
p name.join(" ")


#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#change all of the consonants to the next consonant in the alphabet. 
