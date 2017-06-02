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

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurances(arr)
  result = {}
  arr.each do |element|
    if result.has_key?(element)
      result[element] += 1
    else
      result[element] = 1
    end
  end
  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

count_occurances(vehicles)










