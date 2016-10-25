statement = "The Flintstones Rock"
result = {}

# iterate through each char
statement.each_char do |letter|
# check if result has key[char]
  if result.has_key?(letter)
## if result has key[char] increment value by one
    result[letter] += 1
## if result does not have key[char] set value to 1 and create key
  else
    result[letter] = 1
  end
end
result.delete_if {|letter,_| letter == " "}
p(result)
