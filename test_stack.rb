require_relative "stack"

puts "Test Stack class"
stack = Stack.new
stack.push(10001)
# create 1000 random integer in range (1:10000) and push it into stack
1000.times do |n|
    random_integer = rand(1..10000)
    stack.push(random_integer)
  end
# getting max item after pushing the random integer max should be 10001
puts stack.max
stack.push(12000)
stack.push(10000)
puts stack.max
stack.push(12300)
puts stack.max
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.max

puts "Test Extras class"
extras = Extras.new
extras.push(4)
extras.push(6)
extras.push(8)
puts extras.mean
puts extras.pop
puts extras.mean
