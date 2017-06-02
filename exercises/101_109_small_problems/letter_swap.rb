def swap(string)
  new_string = string.split.map do |word|
    if word.length < 2
      word
    else
      first = word[0]
      last = word[-1]
      new_word = last + word[1..-2] + first
    end
  end
  new_string.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'