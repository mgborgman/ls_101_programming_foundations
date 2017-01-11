puts "How much is the bill? "
bill = gets.chomp.to_f

puts "How much is the tip percentage? "
tip_percent = gets.chomp.to_f
tip_percent = tip_percent / 100

tip = bill * tip_percent
total = bill + tip

puts "The tip is $#{sprintf('%.2f', tip)}"
puts "The total is $#{sprintf('%.2f', total)}"