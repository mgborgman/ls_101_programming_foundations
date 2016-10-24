ten_to_onehundred = (10..100).to_a

if ten_to_onehundred.include?(42)
  puts("42 is between 10 and 100")
else
  puts("42 is not between 10 and 100")
end


if (10..100).cover?(42)
  puts ("42 is between 10 and 100")
else
  puts ("42 is not between 10 and 100")
end