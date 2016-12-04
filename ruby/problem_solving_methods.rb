arr = [1,2,3,4,5,6,3,5,4,4,224,43,435,5,45,24,52,5,235,20]



def search (arr, int)
	indexn = 0
	arr.each do |num| 
		return indexn if num == int
		indexn += 1
    end
    nil
end

puts search(arr,0)




def fib (digits)
	fib_array = [0,1]
	digits -= 2
	while digits > 0 
		algo = fib_array.at(-1) + fib_array.at(-2)
		fib_array.push(algo)
		#p fib_array
		digits -= 1

	end
	fib_array.last		
end

# p fib(6)


if fib(100) == 218922995834555169026
	print "Its alive!"
else
	print "its not alive"
end