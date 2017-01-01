USERNAME = 'admin'
PASSWORD = 'admin'

loop do 
  puts '>> Please enter user name: '
  username_input = gets.chomp

  puts '>> Please enter password: '
  password_input = gets.chomp

  break if username_input == USERNAME && password_input == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'