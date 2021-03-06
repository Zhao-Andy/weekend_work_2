# Complete the method called split_array, which two parameters, the first being
# an array, and the second being an integer. The method will then create an array
# of other arrays, each one being the size of the indicated by the second parameter.
# See the driver code for examples.

# Original code:
# def split_array(array, array_size)
#   new_array = []
#   i = 0
#   push_count = 0
#   while push_count < array.length
#     new_array.push(array.shift)
#     i += 1
#     if new_array.length == array_size
#       array.push(new_array)
#       new_array = []
#       push_count += 1
#     end
#   end
#   array
# end

def spit_array(array, array_size)
  array.each_slice(array_size).to_a
end

# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end
