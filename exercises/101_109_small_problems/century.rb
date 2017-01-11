def century(num)
  century = (num.to_f / 100).ceil
  last_number_in_century = century.to_s.split('').last
  
  if last_number_in_century == '1' && century.to_s.split('').slice(-2) != '1'
    century.to_s + 'st'
  elsif last_number_in_century == '2' && century.to_s.split('').slice(-2) != '1'
    century.to_s + 'nd'
  elsif last_number_in_century == '3' && century.to_s.split('').slice(-2) != '1'
    century.to_s + 'rd'
  else
    century.to_s + 'th'
  end
end

puts century(2000)# == '20th'
puts century(2001)# == '21st'
puts century(1965)# == '20th'
puts century(256)# == '3rd'
puts century(5)# == '1st'
puts century(10103)# == '102nd'
puts century(1052)# == '11th'
puts century(1127)# == '12th'
puts century(11201)# == '113th'