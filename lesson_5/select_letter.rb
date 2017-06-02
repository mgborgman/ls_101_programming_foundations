def select_letter(string, letter)
  counter = 0
  new_string = ''

  loop do
    break if counter == string.length
    if string[counter] == letter
      new_string << letter
    end
    counter += 1
  end
  new_string
end


question = 'How many times does a particular character appear in this sentence?'

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""