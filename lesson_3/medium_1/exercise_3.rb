puts "Solution 1:"
puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "Solution 2:"
puts "the value of 40 + 2 is #{40 + 2}"

# The reason for the error is you are trying to concatenate a string and
# an integer in order to do so you must either convert the integer to a 
# string or use string interpolation.