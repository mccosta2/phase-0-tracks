#encrypt method
#advance each letter of a string forward
#assume lowercase throughout
#don't chance space characters

def encrypt(str)
	index = 0
	while index < str.length
		if str[index] == " "
			index += 1
			next
		elsif str[index] == "z"
			str[index] = "a"
			index += 1
			next		
		else
			str[index] = str[index].next
			index += 1
		end
	end
	return str
end

#puts encrypt("zed")
#decrypt method
#reverse advance of letter
#"abcdefghijklmnopqrstuvwxyz"

def decrypt(str)	
	index = 0
	indexer = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length
		if str[index] == " "
			index += 1
			next
		else
			str[index] = indexer[indexer.index(str[index]) - 1]
			index += 1
		end
	end
	return str
end

#puts decrypt("zed")
#puts decrypt("abc")

#puts decrypt(encrypt("swordfish"))
#this encrypt then decrpyts (iterates forward and iterates backward)

#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts "would you like you encrypt or decrypt a password?"
e_or_d = gets.chomp
#Asks them for the password
puts "What is the password you would like to #{e_or_d}"
password  = gets.chomp
#Conducts the requested operation, prints the result to the screen, and exits
puts "#{e_or_d}ed password: "
if e_or_d == "encrypt"
	puts encrypt(password)
elsif e_or_d == "decrypt"
	puts decrypt(password)
end

