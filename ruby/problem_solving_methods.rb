#Release 0

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

#-------------------------------------------
#Release 1

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

#------------------------------------------------
#Release 2
 #Sorting methods - Bubble sort compares each set of values and the switches thier 
 # postion based on which values is higher and will continue through each pair until 
 # there are no more values to compare.

 #Pseudocode 
 #Compare values in an array 2 at a time.
 #if value at [0] is > than value at[1] then move value at [0] to value at [1]
 # Repeat process until no values can be moved
 #return a new array

def bubble_sort(n)
  return n if n.length <= 1

  0.upto(n.length - 1) do |t|
    0.upto(n.length - 2 - t) do |i|
      if n[i] > n[i + 1]
        n[i], n[i + 1] = n[i + 1], n[i]
      end
    end
  end
  n
end

test_arr =[5,3,2,4,6,7,2,1,9]

bubble_sort(test_arr)





