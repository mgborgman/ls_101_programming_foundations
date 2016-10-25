def titleize(string)
  ignored_words = %w(a an the for and nor but or yet from of on to by at)
  punctuation = %w(. :)
  words = string.split(' ')
  words.each_with_index do |word, index|
    previous_element = words[index - 1] unless index == 0
    next_element = words[index + 1] unless index == words.size - 1
    if index == 0
      word.capitalize!
    elsif ignored_words.include?(word)
      next
    elsif word.include?(punctuation[0]) || word.include?(punctuation[1])
      word.capitalize! unless ignored_words.include?(word)
      next_element.capitalize!
    else
      word.capitalize!
    end
  end
  title = words.join(' ')
end

result = titleize("the lord of the rings: the two towers")
puts (result)