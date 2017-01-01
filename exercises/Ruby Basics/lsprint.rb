QUIT = %w(Q q)
STATEMENT = 'Launch School is the best!'

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  input = gets.chomp

  break if QUIT.include?(input)

  if input.to_i < 3
    puts ">> That's not enough lines."
  else
    input.to_i.times do
      puts STATEMENT
    end
  end
end