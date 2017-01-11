puts "Please enter a word or multiple words: "
word_or_words = gets.chomp

count = 0

word_or_words.each_char do |char|
  count += 1 unless char == ' '
end


puts "There are #{count} characters in \"#{word_or_words}\"."