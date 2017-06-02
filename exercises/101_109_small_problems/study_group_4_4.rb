# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.



# def stringy(num)
#   is_one = true
#   count = 0
#   result = ''
#   while count < num
#     if is_one
#       result << '1'
#     else
#       result << '0'
#     end
#     is_one =  !is_one
#     count += 1
#   end
#   result
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Write a method that takes a string argument and returns a new string 
# that contains the value of the original string with all consecutive duplicate 
# characters collapsed into a single character.

# Input: string
# output: new string with no consecutive chars
# ex. 'gggg' = 'g'

def crunch(string)
  result = string.squeeze!
  if result == nil
    string
  else 
    result
  end
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


# Write a method named include? that takes an Array and a search value as 
# arguments. This method should return true if the search value is in the array, 
# false if it is not. You may not use the Array#include? method in your solution.


# input: array and a value to search for
# output: true or false
# method should return true if seach value is in the array or false otherwise

def include?(arr, search_value)
  arr.each {|e| return true if e == search_value}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

