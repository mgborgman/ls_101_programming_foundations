def real_palindrome?(string)
  string.downcase!
  if string.match(/[^a-zA-Z0-9]/)
    string.gsub!(/[^a-zA-Z0-9\-]/,"")
  end
  string.split('') == string.reverse.split('')
end

puts real_palindrome?('madam')# == true
puts real_palindrome?('Madam')# == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam")# == true # (only alphanumerics matter)
puts real_palindrome?('356653')# == true
puts real_palindrome?('356a653')# == true
puts real_palindrome?('123ab321')# == false