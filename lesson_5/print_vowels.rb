hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |letter|
      if %w(a e i o u).include?(letter)
        puts letter
      end
    end
  end
end

