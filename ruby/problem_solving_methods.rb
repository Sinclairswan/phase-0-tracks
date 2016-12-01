#RELEASE ZERO
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


#RELEASE ONE

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

#RELEASE THREE


num_array = [1,2,3,3,3,44,5,6,25,28,10,12,14,15]

def bubble_sort(array)
  n = array.length
  loop do 
    swaped = false

    (n - 1).times do |i|
      puts i
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swaped = true
      end 
    end
    break if not swaped
  end
  p array
end

bubble_sort(num_array)




