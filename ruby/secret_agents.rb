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

puts encrypt("zed")

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
puts decrypt("zed")
puts decrypt("abc")