require 'Date'

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Date.today.year
years_till_retirement = retirement_age - age
retirement_year = years_till_retirement + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_till_retirement} years of work to go!"