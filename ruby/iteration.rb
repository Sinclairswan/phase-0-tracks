def whats_up
	puts "Hey, what's up!"
	3.times { yield }
	puts "Cool Beans"
end

whats_up { puts "stuff" }


thanksgivingArr = ["turkey", "stuffing", "cranberry"]

potluckHash = { "Bob" => "potatoes", "Sally" => "pie", "Rob" => "sauerkraut" }

puts "Original: "
p thanksgivingArr

thanksgivingArr.each do |thanksgiving|
	puts thanksgiving
end

puts "After .each call: "
p thanksgivingArr


puts "Original: "
p thanksgivingArr

turkeyArr = thanksgivingArr.map do |thanksgiving|
	puts thanksgiving
	thanksgiving.next
end

puts "After .map call: "
p thanksgivingArr
p turkeyArr

puts "Original: "
p thanksgivingArr

thanksgivingArr.map! do |thanksgiving|
	puts thanksgiving 
	thanksgiving.reverse
end

puts "After .map! call "
p thanksgivingArr


puts "Original: "
p potluckHash

potluckHash.each do |name, food|
	puts name
	puts food
end

puts "After .each call: "
p potluckHash

puts "Original: "
p potluckHash

potluck2 = potluckHash.map do |name, food|
	puts name
	puts food
end

puts "After .map call: "
p potluckHash
p potluck2

petsArr = ["dog", "cat", "ferret"]

numArr = [3, 4, 5, 9, 10, 21]

ageHash = { "Bob" => "25", "Sally" => "32", "Rob" => "16" }

def arrHashMethod
	puts "beginning"
	p yield
	puts "end"
end

arrHashMethod { numArr.delete_if {|numbers| numbers < 5} }

numArr = [3, 4, 5, 9, 10, 21]
arrHashMethod { numArr.keep_if {|numbers| numbers <5} }

numArr = [3, 4, 5, 9, 10, 21]
arrHashMethod { numArr.keep_if {|numbers| numbers % 2 == 0 }}

numArr = [3, 4, 5, 9, 10, 21]
arrHashMethod { numArr.drop(3) }


arrHashMethod { ageHash.delete_if {|name, age| age.to_i < 20} }

ageHash = { "Bob" => "25", "Sally" => "32", "Rob" => "16" }
arrHashMethod { ageHash.keep_if {|name, age| age.to_i > 30} }

ageHash = { "Bob" => "25", "Sally" => "32", "Rob" => "16" }
arrHashMethod { ageHash.keep_if {|name, age| name.length >= 5 }}

ageHash = { "Bob" => "25", "Sally" => "32", "Rob" => "16" }
arrHashMethod { ageHash.drop(2) }
