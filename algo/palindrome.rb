# Complete the method called palindrome? which should accept a string as a
# parameter and return a boolean indicated whether the string is a palindrome.
# A palindrome is a word that reads the same both forwards and backwards.
# Examples: eye, madam, racecar

def palindrome?(string)
  array = string.split("")
  a = 0
  z = array.length - 1
  all_true = false
  true_count = 0
  array.length.times do
    if array[a] == array[z]
      true_count += 1
      a += 1
      z -= 1
    end
    if true_count == array.length
      all_true = true
    end
  end
  all_true
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
