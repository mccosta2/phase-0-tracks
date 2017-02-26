def search_array (arr, int)
	index = 0
	arr.each do |digit|
		if digit == int
			return index  
			break
		end
		index = index + 1
		if index == arr.length
			return nil
			break
		end
	end
end

#arr = [42, 89, 23, 1]
#p search_array(arr, 1)
#p search_array(arr, 24)

def fib(int)
	arr = [0,1]
	case int
	when 1
		return arr[0]
	when 2
		return arr[0..1]
	else
		index = 2
		while index < int do
		arr.push((arr[-1]+arr[-2]))
		index = index +1
		end
	return arr
	end
end

#p fib(1)
#p fib(2)
#p fib(6)
#p fib(100).last == 218922995834555169026

#create a sorting algorithm, will use bubble sorting
def bubblesort(arr)
count_max = arr.length
index = 0

while true do
#if second is less than first swap positions 
#compare 1st and second item. if first is less than second, move on

	if arr[index] > arr[index+1]
		arr[index], arr[index+1] = arr[index+1], arr[index]
		# if second is less than first, restart
		index = 0
		next
	else
		index = index + 1
	end

	if index == count_max-1
		return arr
		break

	end

end
end
arrs = [1,9,100,88,4]
p bubblesort(arrs)