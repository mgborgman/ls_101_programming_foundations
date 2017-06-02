def word_cap(string)
  list = string.split
  result = list.map do |word|
    word.capitalize
  end
  result.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


#without capitalize method

def word_cap2(string)
  index = 0
  words_array = string.downcase.split
  while index < words_array.length
    words_array[index][0] = words_array[index][0].upcase
    index += 1
  end
  words_array.join(' ')
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'