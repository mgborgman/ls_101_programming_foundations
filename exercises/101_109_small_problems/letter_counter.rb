def word_sizes(string)
  result = {}
  word_list = string.split
  word_list.each do |word|
    if result.has_key?(word.length)
      result[word.length] += 1
    else
      result[word.length] = 1
    end
  end
  result
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


def correct_word_sizes(string)
  result = Hash.new(0)
  string.downcase!
  new_string = string.delete "^\s^a-z"
  word_list = new_string.split
  word_list.each do |word|
    if result.has_key?(word.length)
      result[word.length] += 1
    else
      result[word.length] = 1
    end
  end
  result   
end

p correct_word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p correct_word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p correct_word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p correct_word_sizes('') == {}