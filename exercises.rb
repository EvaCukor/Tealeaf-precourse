# exercise 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |number| puts number }

# exercise 2
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |number|
	if number > 5
		puts number
	end
end

# exercise 3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = []

arr.select do |number|
	if number % 2 != 0
		new_arr.push(number)
	end
end
p new_arr

# exercise 4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11)
arr.unshift(0)
p arr

# exercise 5
arr.pop
arr.push(3)
p arr

# exercise 6
arr.uniq!
p arr

# exercise 8
h = {:key1 => "value1", :key2 => "value2"}
h2 = {key1: "value1", key2: "value2"}

# exercise 9
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h

h.each do |key, value|
	if value < 3.5
		h.delete(key)
	end
end
puts h

# exercise 12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# exercise 13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# exercise 14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

# exercise 15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |expression|
	expression.start_with?("s") || expression.start_with?("w")
end

p arr

# exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |exp| exp.split(" ") }
a = a.flatten
p a

# exercise 17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
# this program outputs the following: "These hashes are the same!" 