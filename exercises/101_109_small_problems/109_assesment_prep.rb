require 'pry'
require 'date'
# def is_prime?(num)
#   range = (2..(num -1)).to_a
#   return false if num <= 1
#   range.each do |item|
#     return false if num % item == 0
#   end
#   true
# end

# p is_prime?(0)
# p is_prime?(1)

# def select_primes(arr)
#   arr.select do |item|
#     is_prime?(item)
#   end
# end

# p select_primes([1, 2, 3, 4])
# p select_primes([4, 6, 8, 10])

# def count_primes(arr)
#   primes_array = select_primes(arr)
#   primes_array.count
# end

# def count_primes2(arr)
#   primes_array = select_primes(arr)
#   count = 0
#   primes_array.each do |item|
#     count += 1
#   end
#   count
# end

# p count_primes2([1, 2, 3, 4])
# p count_primes2([4, 6, 8, 10])

# def sum_or_product
#   puts "Please enter an integer greater than 0: "
#   num = gets.chomp.to_i
#   range = (1..num).to_a
#   puts "Enter 's' to compute the sum, 'p' to compute the product."
#   operation = gets.chomp
#   result = 1
#   range.each do |item|
#     if operation == 's'
#       if item == 1
#         next
#       else
#         result += item
#       end
#     elsif operation == 'p'
#       result *= item
#     end
#   end
#   if operation == 's'
#     puts "The sum of the integers between 1 and #{num} is #{result}."
#   else
#     puts "The product of the integers between 1 and #{num} is #{result}."
#   end
# end

# sum_or_product


# def interleave(arr1, arr2)
#   index = 0
#   new_arr = []
#   arr1.each do |item|
#     new_arr << item
#     new_arr << arr2[index]
#     index += 1
#   end
#   new_arr
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# def change(param)
#   #binding.pry
#   param = "hi"
#   #binding.pry
#   param << " world"
#   #binding.pry
# end

# greeting = "hello"
# puts change(greeting)

# puts greeting

# def substring(str, num1, num2=num1)
#   str[num1..num2]
# end

# def substrings(str)
#   index_1 = 0
#   index_2 = 1
#   result = []
#   while index_1 < str.length
#     while index_2 < str.length
#       result << substring(str, index_1, index_2)
#       index_2 += 1
#     end
#     index_1 += 1
#     index_2 = index_1 + 1
#   end
#   result
# end

# p substrings("ppop")

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# def madlibs
#   puts "Enter a noun: "
#   noun = gets.chomp
  
#   puts "Enter a verb: "
#   verb = gets.chomp
  
#   puts "Enter an adjective: "
#   adjective = gets.chomp
  
#   puts "Enter an adverb: "
#   adverb = gets.chomp

# sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
# sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
# sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

# puts [sentence_1, sentence_2, sentence_3].sample
# end

# madlibs

# def substrings_at_start(str, count=0)
#   result = []
#   str.chars.each_with_index do |letter, index|
#     result << str[count..index]
#   end
#   result
# end

# p substrings_at_start('abc') #== ['a', 'ab', 'abc']
# p substrings_at_start('a') #== ['a']
# p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def substrings(str)
#   length = str.length
#   count = 0
#   result = []
#   while count < length
#     result << substrings_at_start(str, count)
#     count += 1
#   end
#   result = result.flatten 
#   result.delete_if {|item| item == ""}
# end

# #p substrings('abcde') 

# def palindromes(str)
#   # gather substrings
#   results = substrings(str)
#   # check is substring is a palindrome
#   # if is palindrome, store in results array
#   results.delete_if {|item| item != item.reverse || item.length < 2}  
# end

# # p palindromes('abcd') == []
# # p palindromes('madam') == ['madam', 'ada']
# # palindromes('hello-madam-did-madam-goodbye') == [
# #   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
# #   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
# #   '-madam-', 'madam', 'ada', 'oo'
# # ]
# # p palindromes('knitting cassettes') == [
# #   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# #]

# def fizzbuzz(starting_num, ending_num)
#   starting_num.upto(ending_num) do |num|
#     if num % 3 == 0 && num % 5 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0 
#       puts "Buzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     else
#       puts num
#     end
#   end    
# end

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


# def repeater(str)
#   result = []
#   str.chars do |letter|
#     result << letter * 2
#   end
#   result.join
# end

# # p repeater('Hello') == "HHeelllloo"
# # p repeater("Good job!") == "GGoooodd  jjoobb!!"
# # p repeater('') == ''

# def double_consonants(str)
#   result = []
#   str.chars do |letter|
#     if letter !~ /[^bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
#       result << letter * 2
#     else
#       result << letter
#     end
#   end
#   result.join
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

# def reversed_number(num)
#   int = num
#   str = int.to_s
#   # check for zeros
#   str = str.chars.delete_if {|item| item == '0'}
#   str = str.join
#   # reverse
#   str = str.reverse
#   int = str.to_i
# end

# def reversed_number_one_line(num)
#   result = num.to_s.chars.reverse.join.to_i
# end


# p reversed_number_one_line(12345) == 54321
# p reversed_number_one_line(12213) == 31221
# p reversed_number_one_line(456) == 654
# p reversed_number_one_line(12000) == 21 # Note that zeros get dropped!
# p reversed_number_one_line(1) == 1

# def center_of(str)
#   result = ''
#   if str.length.odd?
#     middle_index = (str.length / 2)
#     result << str[middle_index]
#   else
#     middle_index_1, middle_index_2 = ((str.length / 2) - 1), (str.length / 2)
#     result << str[middle_index_1..middle_index_2]
#   end
#   result
# end

# p center_of('I love ruby') #== 'e'
# p center_of('Launch School') #== ' '
# p center_of('Launch') #== 'un'
# p center_of('Launchschool') #== 'hs'
# p center_of('x') #== 'x'

# def greetings(arr, hash)
#   full_name = arr.join(' ')
#   job = hash[:title] + " " + hash[:occupation]
#   result = "Hello, #{full_name}! Nice to have a #{job} around."
# end

# p greetings(["Matt", "G", "Borgman"], { title: 'Junior', occupation: 'Developer'})
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# def is_double?(num)
#   arr1 = []
#   arr2 = []
#   return false if num.to_s.length.odd?
#   if num.to_s.length.even?
#     str = num.to_s
#     starting_index = str.length / 2
#     arr1 = str[0..(starting_index - 1)]
#     arr2 = str[starting_index..(str.length)]
#     if arr1 == arr2
#       return true
#     else
#       return false
#     end
#   end
# end

# def twice(num)
#   return num if is_double?(num)
#   return num * 2
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# def negative(num)
#   num > 0 ? -num : num
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby

# def sequence(num)
#   result = []
#   if num < 0
#     1.upto(num.abs) {|int| result << -int}
#   elsif num > 0
#     1.upto(num) {|int| result << int}
#   else
#     result << 0
#   end
#   result
# end

# p sequence(5) #== [1, 2, 3, 4, 5]
# p sequence(3) #== [1, 2, 3]
# p sequence(1) #== [1]
# p sequence(0)
# p sequence(-5)

# def uppercase?(str)
#   str.chars.each do |letter|
#     return false if letter =~ /[a-z]/
#   end
#   true
# end

# p uppercase?('t') #== false
# p uppercase?('T') #== true
# p uppercase?('Four Score') #== false
# p uppercase?('FOUR SCORE') #== true
# p uppercase?('4SCORE!') #== true
# p uppercase?('') #== true

# def word_lengths(str)
#   words = str.split(' ')
#   words.map do |word|
#     word << " #{word.length}"
#   end
#   words
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

# def swap_name(str)
#   name_arr = str.split(' ')
#   result = "#{name_arr[1]}, #{name_arr[0]}"
# end

# p swap_name('Joe Roberts') #== 'Roberts, Joe'

# def sequence(length, count)
#   result = []
#   count_original = count
#   length.times do |num|
#     result << count
#     count += count_original
#   end
#   result
# end

# p sequence(5, 1) #== [1, 2, 3, 4, 5]
# p sequence(4, -7) #== [-7, -14, -21, -28]
# p sequence(3, 0) #== [0, 0, 0]
# p sequence(0, 1000000) #== []

# def get_grade(score1, score2, score3)
#   grade = ''
#   average = (score1 + score2 + score3) / 3

#   if average >= 90 && average <= 100
#     grade = 'A'
#   elsif average >= 80 && average <= 90
#     grade = 'B'
#   elsif average >= 70 && average <= 80
#     grade = 'C'
#   elsif average >= 60 && average <= 70
#     grade = 'D'
#   elsif average >= 0 && average <= 60
#     grade = 'F'
#   end

#   grade
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

# def buy_fruit(arr)
#   list = []
#   arr.each do |item|
#     item[1].times do |num|
#       list << item[0]
#     end
#   end
#   list
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# def rotate_array(arr)
#   result = arr.dup
#   first = result.shift
#   result << first
# end

# p rotate_array([1,2,3,4])

# def rotate_strings(str)
#   arr = str.chars
#   result = rotate_array(arr)
#   result.join
# end

# def rotate_integers(num)
#   arr = num.to_s.chars
#   result = rotate_array(arr)
#   result.join.to_i
# end

# x = 1234
# p rotate_integers(x) #== [2, 3, 4, 1]   # => true
# p x #== [1, 2, 3, 4]                 # => true

# def rotate_array(arr, position)
#   result = arr.dup
#   item = result.delete_at(position)
#   result << item
# end

# def rotate_rightmost_digits(num, position)
#   arr = num.to_s.chars
#   result = rotate_array(arr, -position)
#   result.join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# def max_rotation(num)
#   arr = num.to_s.chars
#   result = []
#   arr.length.times do |i|
#     arr = rotate_array(arr)
#     result << arr.shift
#   end
#   result.join.to_i
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# def lights(num)
#   lights = {}
#   count = 1
#   1.upto(num) do |i|
#     lights[i] = false
#   end

#   while count <= lights.length
#     lights.each do |switch, state|
#       if switch % count == 0
#         lights[switch] = !state
#       else
#         lights[switch] = state
#       end
#     end
#     count += 1
#   end
#   lights
# end

# p lights(10)

# def diamonds(num)
#   1.upto(num) do |i|
#     if i.odd?
#       puts ("*" * i).center(num)
#     end
#   end
#   (num - 1).downto(1) do |i|
#     if i.odd?
#       puts ("*" * i).center(num)
#     end
#   end
# end

# diamonds(5)
# diamonds(9)
# diamonds(3)
# diamonds(1)

# SET_OF_INSTUCTIONS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

# def minilang(str)
#   stack = []
#   register = 0
#   list_of_instructions = str.split

#   list_of_instructions.each do |instruction|
#     if SET_OF_INSTUCTIONS.include?(instruction)
#       case instruction
#       when "PUSH"
#         stack << register
#       when "ADD"
#         register = stack.pop + register
#       when "SUB"
#         register = register - stack.pop
#       when "MULT"
#         register = register * stack.pop
#       when "DIV"
#         register = register / stack.pop
#       when "MOD"
#         register = register % stack.pop
#       when "POP"
#         register = stack.pop
#       when "PRINT"
#         puts register
#       end
#     else
#       register = instruction.to_i
#     end
#   end
# end

# DIGITS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#           'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}


# def word_to_digit(str)
#   DIGITS.keys.each do |word|
#     str.gsub!(/\b#{word}\b/, DIGITS[word])
#   end
#   str
# end          

# p word_to_digit('Please call my freight company at five five five one two three four. Thanks.')


# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end


# p fibonacci(20)

# def fibonacci(n)
#   fib_numbers = [1, 1]
#   index1 = 0
#   index2 = 1

#   while fib_numbers.length <= n
#     fib_numbers << (fib_numbers[index1] + fib_numbers[index2])
#     index1 += 1
#     index2 += 1
#   end
#   fib_numbers[n - 1].to_s.split('').last.to_i
# end

# p fibonacci(100) #== 6765


# def longest_sentence
#   result = 0
#   long_sentence = ''
#   file = File.open("speech.txt", "rb")
#   contents = file.read
#   contents = contents.split(/[?!.]/)
#   contents.each do |sentence|
#     sentence = sentence.split(' ')
#     if sentence.length > result
#       long_sentence = sentence.join(' ')
#       result = sentence.length
#     end
#   end
#   puts "#{long_sentence}"
#   puts "Containing #{result} number of words"
# end

# longest_sentence

# BLOCKS = { B: 'O',   X: 'K',   D: 'Q',   C: 'P',   N: 'A',
#            G: 'T',   R: 'E',   F: 'S',   J: 'W',   H: 'U',
#            V: 'I',   L: 'Y',   Z: 'M' }

# def block_word?(str)
#   str = str.upcase
#   BLOCKS.keys.each do |letter|
#     if str.include?(letter.to_s)
#       return false if str.include?(BLOCKS[letter])
#     end
#   end
#   true
# end

# p block_word?('batch') #== true
# p block_word?('butch') #== false
# p block_word?('jest') #== true


# def letter_percentages(str)
#   result = {lowercase: 0, uppercase: 0, neither: 0}
#   counts = {lowercase_count: 0, uppercase_count: 0, neither_count: 0}
#   chars = str.chars
#   chars.each do |char|
#     if char =~ /[A-Z]/
#       counts[:uppercase_count] += 1
#     elsif char =~ /[a-z]/
#       counts[:lowercase_count] += 1
#     else
#       counts[:neither_count] += 1
#     end
#   end
#   result[:lowercase] = (( counts[:lowercase_count] / chars.length.to_f ) * 100 )
#   result[:uppercase] = (( counts[:uppercase_count] / chars.length.to_f ) * 100 )
#   result[:neither] = (( counts[:neither_count] / chars.length.to_f ) * 100 )
#   result
# end

# p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }


# def balanced?(str)
#   chars = str.chars
#   parens = []
#   chars.each do |char|
#     return false if parens.empty? && char == ')'    
#     if char =~ /[()]/
#       parens << char
#     end
#   end
#   return false if parens.last == '('
#   return true if parens.count % 2 == 0
#   false
# end

# def balanced?(str)
#   parens = 0
#   str.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end
#   parens.zero?
# end

# p balanced?('What (is) this?') #== true
# p balanced?('What is) this?') #== false
# p balanced?('What (is this?') #== false
# p balanced?('((What) (is this))?') #== true
# p balanced?('((What)) (is this))?') #== false
# p balanced?('Hey!') #== true
# p balanced?(')Hey!(') #== false
# p balanced?('What ((is))) up(') #== false

# def is_equilateral?(arr)
#   return true if arr[0] == arr[1] && arr[1] == arr[2]
#   false
# end

# def is_isosceles?(arr)
#   return true if arr.uniq.count == 2
# end

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3].sort
#   return :invalid if sides.include?(0) || sides[0] + sides[1] < sides[2]
#   return :equilateral if is_equilateral?(sides)
#   return :isosceles if is_isosceles?(sides)
#   return :scalene
# end

# p triangle(3, 3, 3) #== :equilateral
# p triangle(3, 3, 1.5) #== :isosceles
# p triangle(3, 4, 5) #== :scalene
# p triangle(0, 3, 3) #== :invalid
# p triangle(3, 1, 1) #== :invalid


# def triangle(angle1, angle2, angle3)
#   angles = [angle1, angle2, angle3].sort!
#   return :invalid if angles[0] + angles[1] + angles[2] != 180 || angles.include?(0)
#   return :right if angles.include?(90)
#   return :obtuse if angles.last > 90
#   return :acute
# end

# p triangle(60, 70, 50) #== :acute
# p triangle(30, 90, 60) #== :right
# p triangle(120, 50, 10) #== :obtuse
# p triangle(0, 90, 90) #== :invalid
# p triangle(50, 50, 50) #== :invalid


# def friday_13th(year)
#   date = Date.new(year, 1, 13)
#   number_of_fridays = 0
#   12.times do |n|
#     if date.friday?
#       number_of_fridays += 1
#     end
#     date = date >> 1
#   end
#   number_of_fridays
#   end

# p friday_13th(2015) #== 3
# p friday_13th(1986) #== 1
# p friday_13th(2019) #== 2

# def featured(num)
#   return "There is no possible number that fulfills those requirements" if num >= 9_876_543_210
#   result = 0
#   while num < 9_999_999_999
#     num += 1
#     if num % 7 != 0 || num.to_s.chars.length != num.to_s.chars.uniq.length || num.even?
#       next
#     else
#       result = num
#     end
#     return result if result != 0
#   end
#   result
# end

# p featured(12) #== 21
# p featured(20) #== 21
# p featured(21) #== 35
# p featured(997) #== 1029
# p featured(1029) #== 1043
# p featured(999_999) #== 1_023_547
# p featured(999_999_987) #== 1_023_456_987
# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# def bubble_sort!(array)
#   length = array.length - 2
#   loop do
#     compare = []
#     0.upto(length) do |index|
#       compare << ( array[index] <=> array[index + 1] )
#       if compare.last == 1
#         array[index], array[index + 1] = array[index + 1], array[index]
#       end
#     end
#     length -= 1
#     break if !compare.include?(1)
#   end
#   array
# end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


# def sum_square_difference(num)
#   sum = 0
#   square = 0
#   1.upto(num) do |x|
#     sum += x
#     square += (x**2)
#   end
#   difference = ((sum)**2) - square
# end

# p sum_square_difference(3) #== 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) #== 2640
# p sum_square_difference(1) #== 0
# p sum_square_difference(100) #== 25164150

# def madlibs()
#   nouns = ['afterthought', 'downtown', 'observation', 'beginner', 'snail', 'coal',
#            'car', 'wind', 'airport', 'insurance', 'morning', 'arithmetic']
#   verbs = ['invent', 'whisper', 'scare', 'trouble', 'bang', 'turn', 'boast', 'sin',
#            'deceive', 'force', 'launch', 'preserve']
#   adjectives = ['mammoth', 'giant', 'spotty', 'boundless', 'thoughtful', 'barbarous',
#                 'languid', 'chunky', 'dizzy', 'unsightly', 'sore', 'fallacious']
#   adverbs = ['sweetly', 'unbearably', 'sedately', 'scarcely', 'roughly', 'yearly',
#              'absentmindedly', 'anyway', 'frankly', 'properly', 'justly', 'loftily']

#   file = File.open("madlibs.txt", "rb")
  
#   file.each_line do |line|
#     line.gsub!('noun', nouns.sample)
#     line.gsub!('verb', verbs.sample)
#     line.gsub!('adjective', adjectives.sample)
#     line.gsub!('adverb', adverbs.sample)
#     puts line
#   end
# end

# madlibs


# def star(num)
#   count = 2
#   while count <= (num - 3)
#     puts ("*" + "*".center(num - count) + "*").center(num)
#     count += 2
#   end
#   puts ("*" * 3).center(num)
#   puts "*" * num
#   while count >= 2  
#     puts ("*" + "*".center(num - count) + "*").center(num)
#     count -= 2
#   end
# end

# star(7)
# puts " "
# puts " "
# puts " "

# star(9)

# puts " "
# puts " "
# puts " "

# star(11)

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# def transpose(matrix)
#   index1 = 0
#   index2 = 0
#   transposed_matrix = Array.new(matrix.size) {Array.new()}

#   while index1 <= 2
#     while index2 <= 2
#       transposed_matrix[index1][index2] = matrix[index2][index1]
#       index2 += 1 
#     end
#     index1 += 1
#     index2 = 0
#   end
#   transposed_matrix
# end

# new_matrix = transpose(matrix)

# # p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# # p matrix #== [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


# def transpose(matrix)
#   count1 = matrix.size
#   count2 = matrix[0].size
#   index1 = 0
#   index2 = 0
#   transposed_matrix = Array.new(matrix[0].size) {Array.new()}

#   while index2 <= count2
#     while index1 < count1
#       transposed_matrix[index2][index1] = matrix[index1][index2]
#       #binding.pry
#       index1 += 1
#     end
#     index2 += 1
#     index1 = 0
#     #binding.pry
#   end
#   transposed_matrix
# end



# p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) #==
# # #   #[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) #== [[1]]


# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]


# def rotate90(matrix)
#   result = []
#   number_of_rows = matrix.length
#   number_of_columns = matrix.first.length
  
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row.reverse
#   end
#   result
# end



# p rotate90(matrix1)
# p rotate90(matrix2)


# def my_method(array)
#   if array.empty?
#     []
#   elsif array.length > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurances(arr)
#   result = {}
#   arr.each do |element|
#     if result.has_key?(element)
#       result[element] += 1
#     else
#       result[element] = 1
#     end
#   end
#   result.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end

# count_occurances(vehicles)

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_words(string)
#   result = string.split.map do |word|
#     if word.length >= 5
#       word.reverse
#     else
#       word
#     end
#   end
#   result.join(' ')
# end

# p reverse_words('Professional')          # => lanoisseforP
# p reverse_words('Walk around the block') # => Walk dnuora the kcolb
# p reverse_words('Launch School')         # => hcnuaL loohcS


# def stringy(num)
#   one_or_zero = true
#   result = ''
#   num.times do 
#     if one_or_zero == true
#       result << '1'
#     else
#       result << '0'
#     end
#     one_or_zero = !one_or_zero
#   end
#   result
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# def average(arr)
#   total = arr.reduce(:+)
#   average = (total).to_f / (arr.length).to_f
# end

# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) #== 40

# def sum(num)
#   sum = 0
#   num.to_s.chars.each do |number|
#     sum += number.to_i
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def reverse(arr)
#   result = []
#   while !arr.empty?
#     result << arr.pop
#   end
#   result
# end

# p reverse(['hello', 'matt', 'ashley', 'bruce', 1, 2, 3])


# def fibonacci_numbers(num)
#   result = [1, 1]
#   index = 0
#   while result.size < num 
#     result << result[index] + result[index + 1]
#     index += 1
#   end
#   result
# end

# def index_is_fibonacci(array)
#   fibs = fibonacci_numbers(array.size)
#   result = array.select {|item| fibs.include?(array.index(item))}
# end

# p index_is_fibonacci([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])

# def is_palindrome?(word)
#   reverse = ''
#   arr = word.chars
#   while !arr.empty?
#     reverse << arr.pop
#   end
#   word.downcase == reverse.downcase
# end

# p is_palindrome?('matt')
# p is_palindrome?('Bob')
# p is_palindrome?('mom')


# def reverse(string)
#   result = ''
#   index = 1
#   chars = string.chars
#   while index <= chars.length
#     result << chars[-index]
#     index += 1
#   end
#   result
# end

# p reverse('Matt Borgman')

# def fizzbuzz(start_num, ending_num)
#   result = []
#   numbers = (start_num..ending_num).to_a
#   numbers.each do |num|
#     if num == 0
#       result << num
#     elsif num % 5 == 0 && num % 3 == 0
#       result << "FizzBuzz"
#     elsif num % 5 == 0
#       result << "Buzz"
#     elsif num % 3 == 0
#       result << "Fizz"
#     else
#       result << num
#     end        
#   end
#   puts result.join(', ')
# end

# fizzbuzz(1,15)

# PRODUCTS = [
# {name: "Thinkpad x210" , price: 220},
# {name: "Thinkpad x220" , price: 250},
# {name: "Thinkpad x250" , price: 979},
# {name: "Thinkpad x230" , price: 300},
# {name: "Thinkpad x230" , price: 330},
# {name: "Thinkpad x230" , price: 350},
# {name: "Thinkpad x240" , price: 700},
# {name: "Macbook Leopard" , price: 300},
# {name: "Macbook Air" , price: 700},
# {name: "Macbook Pro" , price: 600},
# {name: "Macbook" , price: 1449},
# {name: "Dell Latitude" , price: 200},
# {name: "Dell Latitude" , price: 650},
# {name: "Dell Inspiron" , price: 300},
# {name: "Dell Inspiron" , price: 450}
# ]

# query = {
#   price_min: 240,
#   price_max: 280,
#   q: "thinkpad" 
# }

# query2 = {
#   price_min: 300,
#   price_max: 450,
#   q: 'dell'
# }

# def search(query)
#   PRODUCTS.select do |product|
#     product[:name].downcase.include?(query[:q]) &&
#     product[:price] <= query[:price_max] &&
#     product[:price] >= query[:price_min]
#   end
# end

# p search(query)
# p search(query2)


# def remove_vowels(words)
#   result = []
#   words.each do |word|
#     no_vowels = word.chars.delete_if { |letter| %w(a e i o u).include?(letter) }
#     result << no_vowels.join("")
#   end
#   result.join(' ')
# end

# def remove_vowels_2(words)
#   result = words.map do |word|
#     word.delete("aeiou")
#   end
#   result.join(' ')
# end

# p remove_vowels(['green', 'yellow', 'white', 'black'])
# p remove_vowels_2(['green', 'yellow', 'white', 'black'])


# def balancer(string)
#   count = 0
#   string.chars.each do |char|
#     break if count < 0
#     count += 1 if char == '('
#     count -= 1 if char == ')'
#   end
#   return true if count == 0
#   false 
# end

# p balancer('hi')
# p balancer('(hi)')
# p balancer('(hi')
# p balancer(')hi(')
# p balancer('(()) )(')

# def is_prime?(num)
#   return true if num == 2
#   return false if num == 0 || num == 1
#   divisors = (2..(num - 1)).to_a
#   divisors.each do |divisor|
#     return false if num % divisor == 0 
#   end
#   true
# end

# def find_primes(starting_num, ending_num)
#   numbers = (starting_num..ending_num).to_a
#   numbers.select! { |num| is_prime?(num) }
#   numbers.join(', ')
# end

# p find_primes(0, 3)

# def substring(string, index1, index2=index1)
#   string[index1..index2]
# end

# def substrings(string)
#   index1 = 0
#   index2 = 1
#   result = []
#   while index1 < string.length
#     while index2 < string.length
#       result << substring(string, index1, index2)
#       index2 += 1
#     end
#     index1 += 1
#     index2 = (index1 + 1)
#   end
#   result
# end

# def palindromes(string)
#   potential_palindromes = substrings(string)
#   potential_palindromes.select do |word|
#     word == word.reverse
#   end
# end

# def largest_palindrome(string)
#   result = palindromes(string)
#   result = result.sort_by { |word| word.length }
#   result.last
# end

# p largest_palindrome("bobandmom")

# p largest_palindrome("no")

# p largest_palindrome("ppop")

# p largest_palindrome("fleetomeremoteelf")

# NUMBERS = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
#             'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'zero' => 0 }

# OPERATORS = {'plus' => '+', 'minus' => '-', 'times' => '*', 'divided by' => '/' }

# def computer(string)
#   result = 0
#   NUMBERS.each do |word, num|
#     string.gsub!(word, num.to_s)
#   end

#   OPERATORS.each do |word, operator|
#     string.gsub!(word, operator)
#   end  

#   words = string.split


#   ((words.size) / 2).times do
#     equation = words.shift(3)

#     left_operand = equation.first.to_i
#     right_operand = equation.last.to_i


#     equation.each do |word|
#       if word == '*'
#         result = left_operand * right_operand
#       elsif word == '/'
#         result = left_operand / right_operand
#       elsif word == '+'
#         result = left_operand + right_operand
#       elsif word == '-'
#         result = left_operand - right_operand
#       end        
#     end
#     words.unshift(result)
#     #binding.pry
#   end
#   result
# end



# p computer("two plus two")
# p computer("seven minus six")
# p computer("zero plus eight")

# p computer("two plus two minus three")
# p computer("three minus one plus five minus four plus six plus 10 minus four")

# p computer("eight times four plus six divided by two minus two")
# p computer("one plus four times two minus two")
# p computer("nine divided by three times six")

# def reverse_odds(string)
#   result = []
#   string.gsub!('.', ' ')
#   string.split.each_with_index do |word, index|
#     if index.odd?
#       result << word.reverse
#     else
#       result << word
#     end
#   end
#   result.join(' ') << '.'
# end

# p reverse_odds("whats the matter with kansas.")
# p reverse_odds("hello.")
# p reverse_odds("hello    .")

# def reverse(string)
#   index = 1
#   reverse_string = ''
#   while index <= string.length
#     reverse_string << string[-index]
#     index += 1
#   end
#   reverse_string
# end

# p reverse("hello world")

# def fibonacci_nums(num, stop=nil)
#   result = [1, 1]
#   index = 0
#   num.times do
#     break if result[index] == stop 
#     result << result[index] + result[index + 1]
#     index += 1
#   end
#   result
# end

# def fib_index(array)
#   fibs = fibonacci_nums(array.length, array.length)
#   result = array.select do |item|
#     fibs.include?(array.index(item))
#   end
#   result
# end

# p fib_index([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])


# def is_palindrome?(word)
#   word.downcase == reverse(word.downcase)
# end

# p is_palindrome?("matt")
# p is_palindrome?("Bob")


# def how_to_loop(array)
#   count = 0
#   loop do
#     count += 1
#     break if count >= array.length
#     next if count.even?
#     puts array[count]
#   end
# end

# how_to_loop([0, 1, 2, 3, 4, 5, 6, 7])

# def age
#   puts "Teddy is #{rand(20..200)} years old!"
# end

# def room_size
#   puts "Enter the length of the room in meters: "
#   length = gets.chomp.to_i

#   puts "Enter the width of the room in meters: "
#   width = gets.chomp.to_i

#   area_meters = length * width
#   area_feet = area_meters * 10.7639

#   puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"
# end

# room_size

# def tip_calculator
#   puts "What is the bill? "
#   bill = gets.chomp.to_f

#   puts "What is the tip percentage? "
#   tip = gets.chomp.to_f

#   tip = bill * (tip / 100.0)
#   total = bill + tip

#   puts "The tip is $#{tip}"
#   puts "The total is $#{total}"
# end

# tip_calculator

# def searching
#   numbers = []
#   puts "enter the 1st number: "
#   numbers << gets.chomp.to_i
#   puts "enter the 2nd number: "
#   numbers << gets.chomp.to_i
#   puts "enter the 3rd number: "
#   numbers << gets.chomp.to_i
#   puts "enter the 4th number: "
#   numbers << gets.chomp.to_i
#   puts "enter the 5th number: "
#   numbers << gets.chomp.to_i
#   puts "enter the last number: "
#   last_number = gets.chomp.to_i

#   p numbers.include?(last_number) ? true : false
# end

# searching

# def count_chars
#   puts "Please enter word or multiple words: "
#   string = gets.chomp
#   string.gsub!(' ', '')
#   string.split('').length
# end

# p count_chars

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(num)
#   multiply(num, num)
# end


# NUMBERS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#            'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

# def computer(string)
#   result = []
#   NUMBERS.each do |word, num|
#     string.gsub!(word, num)
#   end
#   string.gsub!(' by', '')
#   equation = string.downcase.split
#   nums_length = equation.length - equation.count {|x| x == 'minus' || x == 'plus' || x == 'times' || x == 'divided'}
#   number_of_operations = (equation.length - nums_length)
  
#   number_of_operations.times do
#     current_three = equation.shift(3)
#     if current_three.include?('plus')
#       #binding.pry
#       equation.unshift(current_three.first.to_i + current_three.last.to_i)
#     elsif current_three.include?('minus')
#       #binding.pry
#       equation.unshift(current_three.first.to_i - current_three.last.to_i)
#     elsif current_three.include?('times')
#       equation.unshift(current_three.first.to_i * current_three.last.to_i)
#     elsif current_three.include?('divided')
#       equation.unshift(current_three.first.to_i / current_three.last.to_i)
#     end
#   end
#   equation.join('').to_i
# end

# p computer('six times two')
# p computer('two times two divided by two')
# p computer('two times two plus two minus two')


# def word_lengths(string)
#   words = string.split
#   words.map do |word|
#     word << ' ' + word.length.to_s
#   end
#   words
# end

# p word_lengths('cat matt hat')

# def name_swapping(name)
#   name.split.reverse.join(', ')
# end

# p name_swapping("Matt Borgman")

# def sequence(count, increment)
#   result = []
#   start = increment
#   count.times do 
#     result << start
#     start += increment 
#   end
#   result
# end

# p sequence(5, 1) #== [1, 2, 3, 4, 5]
# p sequence(4, -7) #== [-7, -14, -21, -28]
# p sequence(3, 0) #== [0, 0, 0]
# p sequence(0, 1000000) #== []

# def get_grade(score1, score2, score3)
#   average = ((score1 + score2 + score3) / 3)
#   if average >= 90 && average <= 100
#     "A"
#   elsif average >= 80 && average < 90
#     "B"
#   elsif average >= 70 && average < 80
#     "C"
#   elsif average >= 60 && average < 70
#     "D"
#   else
#     "F"
#   end      
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

# def buy_fruit(grocery_list)
#   result = []
#   grocery_list.each do |item|
#     item[1].times do
#       result << item[0]
#     end
#   end
#   result
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
#   #["apples", "apples", "apples", "orange", "bananas","bananas"]

# def rotate_array(array)
#   rotated_array = array.dup
#   rotated_element = rotated_array.shift
#   rotated_array << rotated_element  
# end

# def rotate_rightmost_digits(int, index)
#   array = []
#   int.to_s.chars.each do |num|
#     array << num.to_i
#   end
#   digits_to_rotate = array[-index..array.length]
#   array.pop(index)
#   rotated_array = rotate_array(digits_to_rotate)
#   array << rotated_array
#   array.flatten.join.to_i
# end

# def max_rotation(num)
#   result = [] 
#   index = num.to_s.length
#   while index > 0
#     num = rotate_rightmost_digits(num, index)
#     index -= 1
#     result = num
#   end
#   result
# end

# p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845

# def lights(number_of_lights)
#   lights = {}
#   round = 1
#   1.upto(number_of_lights) do |num|
#     lights[num] = false
#   end
#   while round <= number_of_lights do
#     lights.each do |light_position, light_status|
#       if light_position % round == 0
#         lights[light_position] = !light_status
#       end
#     end
#     round += 1
#   end
#   lights
# end

# p lights(10)

# def reverse(array)
#   reversed_array = []
#   index = 1
#   while index <= array.length
#     reversed_array << array[-index]
#     index += 1
#   end
#   reversed_array
# end

# p reverse([1, 2, 3, 4, 5])
# p reverse(['Matt', 'Ashley', 'Bruce', 'Cindy'])
# p reverse([1])
# p reverse([])

# select an element out of an array if its index is a fibonacci number

# def get_fibs(num)
#   fibonacci_numbers = [0, 1]
#   index_1 = 0
#   index_2 = 1
#   while fibonacci_numbers[index_2] < num
#     fibonacci_numbers << fibonacci_numbers[index_1] + fibonacci_numbers[index_2]
#     index_1 += 1
#     index_2 += 1
#   end
#   fibonacci_numbers
# end

# def select_fibs(array)
#   fibs = get_fibs(array.length)
#   array.select! do |item|
#     fibs.include?(item)
#   end
#   array
# end

# p select_fibs([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) #=> [0, 1, 2, 3, 5, 8]

# determine if a word is a palindrome without using the reverse method

# def is_palindrome?(word)
#   letters = word.downcase.chars
#   reversed_word = []
#   index = 1
#   while index <= letters.length
#     reversed_word << letters[-index]
#     index += 1
#   end
#   reversed_word = reversed_word.join('')
#   reversed_word == word.downcase
# end

# p is_palindrome?("Matt") #=> false
# p is_palindrome?("Bob")  #=> true
# p is_palindrome?("bob")  #=> true

# def factorial_sum(number)
#   # multiply all the numbers from 1 to number
#   product = 1
#   sum = 0
#   1.upto(number) do |num|
#     product *= num
#   end
#   # break result into single digits
#   numbers = product.to_s.chars
#   # sum the digits
#   numbers.each do |num|
#     sum += num.to_i
#   end
#   # return result
#   sum
# end

# # p factorial_sum(4)
# # p factorial_sum(6)

# def find_numbers(numbers, target)
#   # iterate through numbers checking if the first element +
#   # any of the other elements in the array add up to target
#   result = []
#   index1 = 0
#   index2 = 1
#   while index1 < numbers.length do
#     # check numbers[index1] against all other numbers
#     while index2 < numbers.length do
#       # check numbers[index1] + numbers[index2]
#       if numbers[index1] + numbers[index2] == target
#         result << numbers[index1] 
#         result << numbers[index2]
#         return result
#       end
#       index2 += 1
#     end
#     # increment index1
#     index1 += 1
#     # increment index2
#     index2 = (index1 + 1)
#   end
#   return "No matches Found"
# end

# p find_numbers([1, 2, 3, 4], 5)
# p find_numbers([1, 2, 3, 4], 8)
# p find_numbers([1, 2, 3, 4], 7)

# input: two sorted arrays 
# return a sorted array 
# do not sort the result array, result array must be built one element
## at a time in the sorted order

# def merge(arr1, arr2)
#   result = []
#   loop do 
#     compare = arr1.first <=> arr2.first
#     case compare
#     when -1
#       result << arr1.shift
#     when 1
#       result << arr2.shift
#     when nil
#       if arr1.empty?
#         result << arr2.shift
#       else
#         result << arr1.shift
#       end
#     end
#     #binding.pry
#    break if arr1.empty? && arr2.empty?
#   end
#   # compare first element from arr1 with 
#   ## first element from arr2
#   # smaller number is appended to result array
#   result
# end

# # p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# # p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
# # p merge([], [1, 4, 5]) #== [1, 4, 5]
# # p merge([1, 4, 5], []) #== [1, 4, 5]

# def merge_sort(array)
#   # 
# end


# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# def find_multiples(num)
#   range = (1...1000).to_a
#   sum = 0
#   # iterate over numbers from 1 to 1000
#   range.each do |number|
#     # check if number is a multiple or 3 or 5
#     # if yes, add to sum
#     if number % 3 == 0 || number % 5 == 0
#       # sum all kept numbers
#       sum += number
#     end
#   end
#   # return sum
#   sum
# end

# p find_multiples(1000)

# By considering the terms in the Fibonacci 
# sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

# def get_fibs(num)
#   fibs = [1, 2]
#   index1 = 0
#   index2 = 1
#   while fibs[index2] < num do
#     # append to fibs (fibs[current_index] + fibs[next_index])
#     fibs << fibs[index1] + fibs[index2]
#     # increment index1 by 1
#     index1 += 1
#     # make sure the index2 is always one more than index1
#     index2 = (index1 + 1)
#   end
#   fibs.pop if fibs.last > num
#   #return fibs array
#   fibs
# end

# def even_fibs(num)
#   sum = 0
#   # create array of fibs below 4_000_000
#   range = get_fibs(num).to_a
#   # iterate through the array
#   range.each do |number|
#     # if number is even, add number to sum
#     sum += number if number.even?
#   end  
#   # return sum
#   sum
# end

# p even_fibs(4_000_000)

# What is the largest prime factor of the number 600851475143 ?



# return prime

# def is_prime?(num)
#   return false if num <= 2
#   2.upto(num - 1) do |divisor|
#     return false if num % divisor == 0
#   end
#   true
# end

# def find_primes(number)
#   # find all primes up to number  
#   range = []
#   number.downto(1){|num| range << num}
#   primes_within_range = []
#   primes_within_range = range.select{|number| is_prime?(number)}
#   # starting from largest prime check number for primes that divide
#   ## evenly into number
#   primes_within_range.each do |divisor|
#     return divisor if number % divisor == 0
#   end
# end

# p find_primes(600851475143)

# Find the largest palindrome made from the product of two 3-digit numbers.

# ex: 99 x 91 = 9009

# def largest_palindrome(num1, num2)
#   # take two numbers num1 and num2
#   palindromes = []
#   result = []
#   # we are limited to 3 digit numbers so we start with 999 and 999
#   # get the product of num1 and num2
#   product = num1 * num2
#   # find the largest palindrome equal to or less than the product
#   range = []
#   product.downto(1){|num| range << num}
#   range.each do |num|
#     palindromes << num if num.to_s == num.to_s.reverse
#   end
#   # check to find if it has two 3 digit factors
#   palindromes.each do |palindrome|
#     if palindrome % num1 == 0
#       return palindrome
#     else
#       num1 -= 1
#     end
#   end
#   # repeat
#   # check if product of num1 and num2 is a numerical palindrome  
# end


# p largest_palindrome(999, 999)

# Find the difference between the sum of the squares
# of the first one hundred natural numbers and the square of the sum

# def sum_square_difference(num)
#   range = (1..num).to_a
#   sum_of_squares = 0
#   square_of_sums = 0 
#   sum = 0
#   range.each do |number|
#     sum_of_squares += (number ** 2)
#     sum += number
#   end
#   square_of_sums = (sum ** 2)
#   square_of_sums - sum_of_squares
# end


# p sum_square_difference(100)

# def sum_factorial(number)
#   #find the factorial of number
#   ## create variable called factorial
#   factorial = 1
#   sum = 0
#   ## iterating through 1 - number
#   1.upto(number) do |num|
#     ## store product of factorial and current number in factorial
#     factorial *= num
#   end
#   # split factorial into single digits
#   factorial.to_s.chars.each do |num|
#     # sum digits
#     sum += num.to_i
#   end
#   sum
# end

# p sum_factorial(5)


# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def info()
#     "#{name} weighs #{weight} and is #{height} tall."
#   end

#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
  
#   def speak
#     "#{name} says Arf!"
#   end
# end

# class Vehicle
#   @@number_of_vehicles = 0

#   def self.number_of_vehicles
#     "This program has created #{@@number_of_vehicles} vehicles"
#   end

#   def initialize
#     @@number_of_vehicles += 1
#   end

#   def self.calculate_gas_mileage(gas_tank, miles_on_one_tank)
#     mileage = miles_on_one_tank / gas_tank
#   end
# end

# class MyCar
#   attr_accessor :year, :color, :model, :speed, :engine_on

#   def initialize(year, color, model)
#     self.year = year
#     self.color = color
#     self.model = model
#     self.speed = 0
#     self.engine_on = false
#   end

#   def accelerate()
#     self.speed += 1
#   end

#   def decelerate()
#     self.speed -= 1
#   end

#   def turn_engine_off_or_on()
#     self.engine_on = !engine_on
#   end

#   def info()
#     puts "Year: #{year}"
#     puts "Color: #{color}"
#     puts "Model: #{model}"
#     puts "Speed: #{speed}"
#     puts "Engine on? #{engine_on}"

#   end

#   def to_s
#     "This a #{year} #{color} #{model}"
#   end

# end
# vehicle = Vehicle.new
# vehicle2 = Vehicle.new
# p Vehicle.number_of_vehicles
# car = MyCar.new(2000, 'Silver', "Toyota")

class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    full_name = name.split(' ')
    @first_name = full_name.first
    @last_name = full_name.size > 1 ? full_name.last : ''
  end

  def name=(name)
    full_name = name.split(' ')
    self.first_name = full_name.first
    self.last_name = full_name.size > 1 ? full_name.last : ''
  end

  def name
    self.first_name + ' ' + self.last_name
  end

end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'























